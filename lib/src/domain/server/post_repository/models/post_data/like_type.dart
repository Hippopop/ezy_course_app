import 'package:freezed_annotation/freezed_annotation.dart';

import '../meta.dart';

part 'like_type.freezed.dart';
part 'like_type.g.dart';

@freezed
class LikeType with _$LikeType {
  factory LikeType({
    @JsonKey(name: 'reaction_type') String? reactionType,
    @JsonKey(name: 'feed_id') int? feedId,
    Meta? meta,
  }) = _LikeType;

  factory LikeType.fromJson(Map<String, dynamic> json) =>
      _$LikeTypeFromJson(json);
}
