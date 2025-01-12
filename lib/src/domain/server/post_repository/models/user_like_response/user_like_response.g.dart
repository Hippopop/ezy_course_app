// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_like_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLikeResponseImpl _$$UserLikeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLikeResponseImpl(
      totalReactions: (json['total_reactions'] as num?)?.toInt(),
      likeType: (json['likeType'] as List<dynamic>?)
          ?.map((e) => LikeType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserLikeResponseImplToJson(
        _$UserLikeResponseImpl instance) =>
    <String, dynamic>{
      'total_reactions': instance.totalReactions,
      'likeType': instance.likeType,
    };
