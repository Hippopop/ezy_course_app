import 'package:freezed_annotation/freezed_annotation.dart';

import '../meta.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    int? id,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'profile_pic') String? profilePic,
    @JsonKey(name: 'user_type') String? userType,
    Meta? meta,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
