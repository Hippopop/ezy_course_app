import 'package:freezed_annotation/freezed_annotation.dart';

import '../post_data/like_type.dart';

part 'user_like_response.freezed.dart';
part 'user_like_response.g.dart';

@freezed
class UserLikeResponse with _$UserLikeResponse {
  factory UserLikeResponse({
    @JsonKey(name: 'total_reactions') int? totalReactions,
    List<LikeType>? likeType,
  }) = _UserLikeResponse;

  factory UserLikeResponse.fromJson(Map<String, dynamic> json) =>
      _$UserLikeResponseFromJson(json);
}
