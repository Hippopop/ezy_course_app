// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostCommentModelImpl _$$PostCommentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostCommentModelImpl(
      id: (json['id'] as num?)?.toInt(),
      schoolId: (json['school_id'] as num?)?.toInt(),
      feedId: (json['feed_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      replyCount: (json['reply_count'] as num?)?.toInt(),
      likeCount: (json['like_count'] as num?)?.toInt(),
      commentTxt: json['comment_txt'] as String?,
      parrentId: json['parrent_id'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      file: json['file'],
      privateUserId: json['private_user_id'],
      isAuthorAndAnonymous: (json['is_author_and_anonymous'] as num?)?.toInt(),
      gift: json['gift'],
      sellerId: json['seller_id'],
      giftedCoins: json['gifted_coins'],
      replies: json['replies'] as List<dynamic>?,
      privateUser: json['private_user'],
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      commentlike: json['commentlike'],
      totalLikes: json['totalLikes'] as List<dynamic>?,
      reactionTypes: (json['reaction_types'] as List<dynamic>?)
          ?.map((e) => LikeType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostCommentModelImplToJson(
        _$PostCommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'school_id': instance.schoolId,
      'feed_id': instance.feedId,
      'user_id': instance.userId,
      'reply_count': instance.replyCount,
      'like_count': instance.likeCount,
      'comment_txt': instance.commentTxt,
      'parrent_id': instance.parrentId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'file': instance.file,
      'private_user_id': instance.privateUserId,
      'is_author_and_anonymous': instance.isAuthorAndAnonymous,
      'gift': instance.gift,
      'seller_id': instance.sellerId,
      'gifted_coins': instance.giftedCoins,
      'replies': instance.replies,
      'private_user': instance.privateUser,
      'user': instance.user,
      'commentlike': instance.commentlike,
      'totalLikes': instance.totalLikes,
      'reaction_types': instance.reactionTypes,
    };
