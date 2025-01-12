import 'package:ezy_course_app/src/domain/server/post_repository/models/post_data/like_type.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/models/post_data/post_data.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/models/post_data/user_like.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/post_repository_impl.dart';
import 'package:ezy_course_app/src/features/news_feed/controllers/post_feed_controller.dart';
import 'package:ezy_course_app/src/features/news_feed/views/widgets/reaction_button.dart';
import 'package:ezy_course_app/src/utilities/scaffold_utils/snackbar_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final singlePostStateProvider =
    NotifierProviderFamily<SinglePostStateNotifier, PostData, int>(
  SinglePostStateNotifier.new,
);

class SinglePostStateNotifier extends FamilyNotifier<PostData, int> {
  @override
  build(arg) {
    final list = (ref.watch(postFeedStateProvider).requireValue).dataList;
    return list.firstWhere((e) => e.id == arg);
  }

  triggerReaction(Reaction newReaction) {
    final repo = ref.read(postRepositoryProvider);
    final currentState = state;
    final list = ref.read(postFeedStateProvider.notifier);
    if (state.like?.toReaction != newReaction) {
      final hasLikeType =
          state.likeType?.any((e) => e.reactionType.reaction == newReaction);
      list.updateSinglePost(
        state.copyWith(
          like: UserLike(reactionType: newReaction.api),
          likeCount: (state.likeCount ?? 0) + 1,
          likeType: (hasLikeType ?? false)
              ? [LikeType(reactionType: newReaction.api), ...?state.likeType]
              : state.likeType,
        ),
      );
      repo
          .userReaction(feedID: state.id!, isCreate: true, type: newReaction)
          .then(
        (value) {
          if (value.isSuccess) {
            list.updateSinglePost(
              state.copyWith(
                likeCount: value.data!.totalReactions,
                likeType: value.data!.likeType,
              ),
            );
          } else {
            list.updateSinglePost(currentState);
            showToastError(value.error!, "Reaction Failed!");
          }
        },
        onError: (e, s) {
          list.updateSinglePost(currentState);
          showToastError(e.toString(), "Reaction Failed!");
        },
      );
    } else {
      list.updateSinglePost(
        state.copyWith(
          like: null,
          likeCount: (state.likeCount ?? 1) - 1,
        ),
      );
      repo
          .userReaction(feedID: state.id!, isCreate: false, type: newReaction)
          .then(
        (value) {
          if (value.isSuccess) {
            list.updateSinglePost(
              state.copyWith(
                likeCount: value.data!.totalReactions,
                likeType: value.data!.likeType,
              ),
            );
          } else {
            list.updateSinglePost(currentState);
            showToastError(value.error!, "Reaction Failed!");
          }
        },
        onError: (e, s) {
          list.updateSinglePost(currentState);
          showToastError(e.toString(), "Reaction Failed!");
        },
      );
    }
  }
}
