import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_screen_state.freezed.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  const factory LoginScreenState({
    required String email,
    required String password,
  }) = _LoginScreenState;
}
