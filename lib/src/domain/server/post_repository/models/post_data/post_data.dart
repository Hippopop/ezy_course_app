import 'package:ezy_course_app/src/domain/server/post_repository/models/post_data/like_type.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/models/post_data/user_like.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../meta.dart';
import '../meta_data.dart';
import 'user.dart';

part 'post_data.freezed.dart';
part 'post_data.g.dart';

@freezed
class PostData with _$PostData {
  factory PostData({
    int? id,
    @JsonKey(name: 'school_id') int? schoolId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'course_id') dynamic courseId,
    @JsonKey(name: 'community_id') int? communityId,
    @JsonKey(name: 'group_id') dynamic groupId,
    @JsonKey(name: 'feed_txt') String? feedTxt,
    String? status,
    String? slug,
    String? title,
    @JsonKey(name: 'activity_type') String? activityType,
    @JsonKey(name: 'is_pinned') int? isPinned,
    @JsonKey(name: 'file_type') String? fileType,
    List<dynamic>? files,
    @JsonKey(name: 'like_count') int? likeCount,
    @JsonKey(name: 'comment_count') int? commentCount,
    @JsonKey(name: 'share_count') int? shareCount,
    @JsonKey(name: 'share_id') int? shareId,
    @JsonKey(name: 'meta_data') MetaData? metaData,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'feed_privacy') String? feedPrivacy,
    @JsonKey(name: 'is_background') int? isBackground,
    @JsonKey(name: 'bg_color') dynamic bgColor,
    @JsonKey(name: 'poll_id') dynamic pollId,
    @JsonKey(name: 'lesson_id') dynamic lessonId,
    @JsonKey(name: 'space_id') int? spaceId,
    @JsonKey(name: 'video_id') dynamic videoId,
    @JsonKey(name: 'stream_id') dynamic streamId,
    @JsonKey(name: 'blog_id') dynamic blogId,
    @JsonKey(name: 'schedule_date') dynamic scheduleDate,
    dynamic timezone,
    @JsonKey(name: 'is_anonymous') dynamic isAnonymous,
    @JsonKey(name: 'meeting_id') dynamic meetingId,
    @JsonKey(name: 'seller_id') dynamic sellerId,
    @JsonKey(name: 'publish_date') DateTime? publishDate,
    @JsonKey(name: 'is_feed_edit') bool? isFeedEdit,
    String? name,
    String? pic,
    int? uid,
    @JsonKey(name: 'is_private_chat') int? isPrivateChat,
    dynamic group,
    User? user,
    List<LikeType>? likeType,
    dynamic follow,
    dynamic poll,
    UserLike? like,
    dynamic savedPosts,
    List<dynamic>? comments,
    Meta? meta,
  }) = _PostData;

  factory PostData.fromJson(Map<String, dynamic> json) =>
      _$PostDataFromJson(json);
}
