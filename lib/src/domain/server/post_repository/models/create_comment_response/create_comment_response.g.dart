// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCommentResponseImpl _$$CreateCommentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCommentResponseImpl(
      commentTxt: json['comment_txt'] as String?,
      feedId: (json['feed_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      schoolId: (json['school_id'] as num?)?.toInt(),
      isAuthorAndAnonymous: json['is_author_and_anonymous'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      id: (json['id'] as num?)?.toInt(),
      replies: json['replies'] as List<dynamic>?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      commentlike: json['commentlike'],
      reactionTypes: (json['reaction_types'] as List<dynamic>?)
          ?.map((e) => LikeType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateCommentResponseImplToJson(
        _$CreateCommentResponseImpl instance) =>
    <String, dynamic>{
      'comment_txt': instance.commentTxt,
      'feed_id': instance.feedId,
      'user_id': instance.userId,
      'school_id': instance.schoolId,
      'is_author_and_anonymous': instance.isAuthorAndAnonymous,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'id': instance.id,
      'replies': instance.replies,
      'user': instance.user,
      'commentlike': instance.commentlike,
      'reaction_types': instance.reactionTypes,
    };
