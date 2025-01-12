import 'package:ezy_course_app/src/features/news_feed/views/widgets/reaction_button.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../meta.dart';

part 'user_like.freezed.dart';
part 'user_like.g.dart';

@freezed
class UserLike with _$UserLike {
  factory UserLike({
    int? id,
    @JsonKey(name: 'feed_id') int? feedId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'reaction_type') String? reactionType,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'is_anonymous') int? isAnonymous,
    Meta? meta,
  }) = _UserLike;

  const UserLike._();
  Reaction? get toReaction => reactionType?.reaction;

  factory UserLike.fromJson(Map<String, dynamic> json) =>
      _$UserLikeFromJson(json);
}
