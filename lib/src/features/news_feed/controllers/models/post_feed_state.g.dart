// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_feed_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostFeedStateImpl _$$PostFeedStateImplFromJson(Map<String, dynamic> json) =>
    _$PostFeedStateImpl(
      isLoading: json['isLoading'] as bool,
      fetchedIdList: (json['fetchedIdList'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      dataList: (json['dataList'] as List<dynamic>)
          .map((e) => PostData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostFeedStateImplToJson(_$PostFeedStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'fetchedIdList': instance.fetchedIdList,
      'dataList': instance.dataList,
    };
