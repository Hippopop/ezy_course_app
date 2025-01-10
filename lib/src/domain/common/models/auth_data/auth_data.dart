import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_data.g.dart';
part 'auth_data.freezed.dart';

@freezed
class AuthData with _$AuthData {
  const factory AuthData({
    required String? type,
    required String? token,
  }) = _AuthResponse;

  const AuthData._();
  bool get isAUthenticated => token != null || type != null;

  factory AuthData.fromJson(Map<String, Object?> json) =>
      _$AuthDataFromJson(json);
}
