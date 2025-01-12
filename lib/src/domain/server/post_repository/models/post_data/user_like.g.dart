// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_like.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLikeImpl _$$UserLikeImplFromJson(Map<String, dynamic> json) =>
    _$UserLikeImpl(
      id: (json['id'] as num?)?.toInt(),
      feedId: (json['feed_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      reactionType: json['reaction_type'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      isAnonymous: (json['is_anonymous'] as num?)?.toInt(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserLikeImplToJson(_$UserLikeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'feed_id': instance.feedId,
      'user_id': instance.userId,
      'reaction_type': instance.reactionType,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'is_anonymous': instance.isAnonymous,
      'meta': instance.meta,
    };
