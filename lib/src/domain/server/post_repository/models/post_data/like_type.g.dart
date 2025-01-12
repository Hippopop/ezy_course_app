// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikeTypeImpl _$$LikeTypeImplFromJson(Map<String, dynamic> json) =>
    _$LikeTypeImpl(
      reactionType: json['reaction_type'] as String?,
      feedId: (json['feed_id'] as num?)?.toInt(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LikeTypeImplToJson(_$LikeTypeImpl instance) =>
    <String, dynamic>{
      'reaction_type': instance.reactionType,
      'feed_id': instance.feedId,
      'meta': instance.meta,
    };
