import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_data.g.dart';
part 'auth_data.freezed.dart';

@freezed
class AuthData with _$AuthData {
  const factory AuthData({
    required String type,
    required String token,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, Object?> json) =>
      _$AuthDataFromJson(json);
}
