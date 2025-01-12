import 'dart:async';
import 'dart:developer';

import 'package:ezy_course_app/src/domain/server/post_repository/models/post_comment_response/post_comment_model.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/post_repository_impl.dart';
import 'package:ezy_course_app/src/utilities/scaffold_utils/snackbar_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postCommentProvider = AsyncNotifierProviderFamily<PostCommentNotifier,
    List<PostCommentModel>, int>(
  PostCommentNotifier.new,
);

class PostCommentNotifier
    extends FamilyAsyncNotifier<List<PostCommentModel>, int> {
  @override
  FutureOr<List<PostCommentModel>> build(arg) async {
    final rep = ref.watch(postRepositoryProvider);

    final res = await rep.getComments(feedId: arg);
    if (res.isError) throw res.error!;
    return res.data!;
  }

  Future<bool> postComment(String text, int feedId, int userId) async {
    try {
      final provider = ref.read(postRepositoryProvider);
      final res = await provider.createComments(
        feedId: feedId,
        commentText: text,
        feedUserId: userId,
      );

      if (res.isError) {
        showToastError(res.error!, "Comment Failed!");
      } else {
        ref.invalidateSelf();
      }
      return res.isSuccess;
    } catch (e, s) {
      log("## Comment Error ##", error: e, stackTrace: s);
      state = AsyncValue.error(e, s);
      return false;
    }
  }
}
