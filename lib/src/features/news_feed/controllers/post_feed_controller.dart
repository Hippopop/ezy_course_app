import 'dart:async';
import 'dart:developer';

import 'package:ezy_course_app/src/domain/server/post_repository/models/post_data/post_data.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/post_repository_impl.dart';
import 'package:ezy_course_app/src/features/news_feed/controllers/models/post_feed_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lastIDProvider = StateProvider<int>((ref) => 215428);

final postFeedStateProvider =
    AsyncNotifierProvider<PostFeedNotifier, PostFeedState>(
  PostFeedNotifier.new,
);

class PostFeedNotifier extends AsyncNotifier<PostFeedState> {
  @override
  FutureOr<PostFeedState> build() async {
    final res = await ref.watch(postRepositoryProvider).getPosts(lastID: 0);
    if (res.isError) {
      state = AsyncValue.error(res.error!, StackTrace.current);
    }
    return PostFeedState(
      isLoading: false,
      dataList: res.data!,
      fetchedIdList: [0],
    );
  }

  Future<void> loadMoreData() async {
    if (state.valueOrNull?.dataList.isNotEmpty ?? false) {
      state = AsyncValue.data(state.value!.copyWith(isLoading: true));
      try {
        final lastID = state.value!.dataList.last.id!;
        final res =
            await ref.read(postRepositoryProvider).getPosts(lastID: lastID);
        if (res.isError) {
          state = AsyncValue.error(res.error!, StackTrace.current);
        } else {
          if (state.value!.fetchedIdList.contains(lastID)) {
            state = AsyncValue.data(state.value!.copyWith(isLoading: false));
            log("Rejected Data for last ID: $lastID");
            return;
          }
          state = AsyncValue.data(state.value!.copyWith(
            isLoading: false,
            fetchedIdList: [...state.value!.fetchedIdList, lastID],
            dataList: [
              ...(state.value!.dataList),
              ...res.data!,
            ],
          ));
        }
      } catch (e, s) {
        state = AsyncValue.error(e, s);
      }
    }
  }

  updateSinglePost(PostData post) {
    final currentState = state.valueOrNull;
    if (currentState != null) {
      final index = currentState.dataList.indexWhere((e) => e.id == post.id);
      if (index != -1) {
        final List<PostData> list = List.from(currentState.dataList);
        list[index] = post;
        state = AsyncValue.data(currentState.copyWith(dataList: list));
      }
    }
  }
}
