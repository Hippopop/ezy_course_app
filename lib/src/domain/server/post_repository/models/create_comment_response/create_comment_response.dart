import 'package:ezy_course_app/src/domain/server/post_repository/models/post_data/like_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'create_comment_response.freezed.dart';
part 'create_comment_response.g.dart';

@freezed
class CreateCommentResponse with _$CreateCommentResponse {
  factory CreateCommentResponse({
    @JsonKey(name: 'comment_txt') String? commentTxt,
    @JsonKey(name: 'feed_id') int? feedId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'school_id') int? schoolId,
    @JsonKey(name: 'is_author_and_anonymous') bool? isAuthorAndAnonymous,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    int? id,
    List<dynamic>? replies,
    User? user,
    dynamic commentlike,
    @JsonKey(name: 'reaction_types') List<LikeType>? reactionTypes,
  }) = _CreateCommentResponse;

  factory CreateCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCommentResponseFromJson(json);
}
