import 'package:ezy_course_app/src/domain/common/models/auth_data/auth_data.dart';
import 'package:ezy_course_app/src/domain/storage/auth_repository/auth_storage.dart';
import 'package:ezy_course_app/src/utilities/scaffold_utils/snackbar_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This provider is used to manage the authentication state of the user.
final authStateProvider =
    AsyncNotifierProvider<AuthenticationStateNotifier, AuthData?>(
  AuthenticationStateNotifier.new,
);

class AuthenticationStateNotifier extends AsyncNotifier<AuthData?> {
  late final AuthenticationStorage _storage = const AuthenticationStorage();

  @override
  build() async {
    final data = await _storage.getUserToken();
    return data == null
        ? null
        : AuthData(token: data.accessToken, type: data.tokenType);
  }

  logout() async {
    await _storage.clearAuthData();
    ref.invalidateSelf();
    showToastSuccess("User logged out successfully!");
  }

  Future<void> saveAuthData(AuthData data) async {
    await _storage.saveUserToken(data.token, data.type);
    ref.invalidateSelf();
  }
}
