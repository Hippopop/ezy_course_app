import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ezy_course_app/src/constants/server/api_config.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/models/create_comment_response/create_comment_response.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/models/create_post_response/create_post_response.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/models/post_comment_response/post_comment_model.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/models/post_data/post_data.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/models/user_like_response/user_like_response.dart';
import 'package:ezy_course_app/src/domain/server/source/helpers/config_provider.dart';
import 'package:ezy_course_app/src/domain/server/source/helpers/response_wrapper.dart';
import 'package:ezy_course_app/src/features/news_feed/views/widgets/reaction_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'post_repository.dart';

final postRepositoryProvider = Provider<PostRepository>((ref) {
  return PostRepositoryImpl(requestHandler: ref.watch(requestHandlerProvider));
});

class PostRepositoryImpl extends PostRepository {
  PostRepositoryImpl({required super.requestHandler});

  @override
  Future<ResponseWrapper<List<PostData>>> getPosts({int? lastID}) async {
    log("Fetching for last ID: $lastID");
    final raw = await requestHandler.post(
      APIConfig.post,
      FormData.fromMap(
        {"more": lastID, "community_id": 2914, "space_id": 5883},
      ),
    );
    return ResponseWrapper<List<PostData>>.fromMap(
      rawResponse: raw,
      purserFunction: (rawData) =>
          (rawData as List).map((e) => PostData.fromJson(Map.from(e))).toList(),
    );
  }

  @override
  Future<ResponseWrapper<UserLikeResponse>> userReaction({
    required int feedID,
    required bool isCreate,
    required Reaction type,
  }) async {
    final raw = await requestHandler.post(
      APIConfig.like,
      FormData.fromMap(
        {
          "reactionSource": "COMMUNITY", // Fixed!
          "feed_id": feedID,
          "action": isCreate ? "create" : "delete",
          "reaction_type": type.api,
        },
      ),
    );
    return ResponseWrapper<UserLikeResponse>.fromMap(
      print: true,
      rawResponse: raw,
      purserFunction: (rawData) => UserLikeResponse.fromJson(rawData),
    );
  }

  @override
  Future<ResponseWrapper<CreatePostResponse>> createPost(
      {required String post, required int? gradientIndex}) async {
    int hasBg = 0;
    String bgGradient = "";
    if (gradientIndex != null) {
      hasBg = 1;
      bgGradient = PostRepository.gradientText[gradientIndex];
    }

    final raw = await requestHandler.post(
      APIConfig.createPost,
      FormData.fromMap(
        {
          "feed_txt": post,
          "is_background": hasBg,
          "bg_color": bgGradient,
          "space_id": 5883,
          "uploadType": "text",
          "community_id": 2914,
          "activity_type": "group",
        },
      ),
    );
    return ResponseWrapper<CreatePostResponse>.fromMap(
      rawResponse: raw,
      purserFunction: (rawData) => CreatePostResponse.fromJson(rawData),
    );
  }

  @override
  Future<ResponseWrapper<List<PostCommentModel>>> getComments(
      {required int feedId}) async {
    final raw = await requestHandler.get(
      "${APIConfig.fetchComments}$feedId",
      baseUrl: APIConfig.loginBaseURL,
    );
    return ResponseWrapper<List<PostCommentModel>>.fromMap(
      rawResponse: raw,
      purserFunction: (rawData) =>
          (rawData as List).map((e) => PostCommentModel.fromJson(e)).toList(),
    );
  }

  @override
  Future<ResponseWrapper<CreateCommentResponse>> createComments({
    required int feedId,
    required int feedUserId,
    required String commentText,
  }) async {
    final raw = await requestHandler.post(
      APIConfig.createComment,
      FormData.fromMap({
        "feed_id": feedId,
        "feed_user_id": feedUserId,
        "comment_txt": commentText,
        "commentSource": "COMMUNITY", // Fixed!
      }),
      baseUrl: APIConfig.loginBaseURL,
    );
    return ResponseWrapper<CreateCommentResponse>.fromMap(
      print: true,
      rawResponse: raw,
      purserFunction: (rawData) => CreateCommentResponse.fromJson(rawData),
    );
  }
}
