import 'package:ezy_course_app/src/domain/server/post_repository/models/post_data/like_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'post_comment_model.freezed.dart';
part 'post_comment_model.g.dart';

@freezed
class PostCommentModel with _$PostCommentModel {
  factory PostCommentModel({
    int? id,
    @JsonKey(name: 'school_id') int? schoolId,
    @JsonKey(name: 'feed_id') int? feedId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'reply_count') int? replyCount,
    @JsonKey(name: 'like_count') int? likeCount,
    @JsonKey(name: 'comment_txt') String? commentTxt,
    @JsonKey(name: 'parrent_id') dynamic parrentId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    dynamic file,
    @JsonKey(name: 'private_user_id') dynamic privateUserId,
    @JsonKey(name: 'is_author_and_anonymous') int? isAuthorAndAnonymous,
    dynamic gift,
    @JsonKey(name: 'seller_id') dynamic sellerId,
    @JsonKey(name: 'gifted_coins') dynamic giftedCoins,
    List<dynamic>? replies,
    @JsonKey(name: 'private_user') dynamic privateUser,
    User? user,
    dynamic commentlike,
    List<dynamic>? totalLikes,
    @JsonKey(name: 'reaction_types') List<LikeType>? reactionTypes,
  }) = _PostCommentModel;

  factory PostCommentModel.fromJson(Map<String, dynamic> json) =>
      _$PostCommentModelFromJson(json);
}
