import 'package:ezy_course_app/src/domain/server/auth_repository/auth_repository.dart';
import 'package:ezy_course_app/src/domain/server/auth_repository/auth_repository_impl.dart';
import 'package:ezy_course_app/src/domain/storage/creds_repository/creds_storage.dart';
import 'package:ezy_course_app/src/features/authentication/models/login_screen_state.dart';
import 'package:ezy_course_app/src/services/authentication/authentication_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginStateProvider =
    AsyncNotifierProvider<LoginStateNotifier, LoginScreenState?>(
  LoginStateNotifier.new,
);

class LoginStateNotifier extends AsyncNotifier<LoginScreenState?> {
  late final AuthRepository _authRepo = ref.watch(authRepositoryProvider);
  late final _credStorage = const CredentialsStorage();

  @override
  build() async {
    final state = await _credStorage.getUserCredentials();
    if (state == null) {
      return null;
    }
    return LoginScreenState(email: state.email, password: state.password);
  }

  Future<void> login(
    String email,
    String password,
    bool rememberMe,
  ) async {
    try {
      state = const AsyncLoading();
      final res = await _authRepo.login(email: email, password: password);
      if (rememberMe) {
        await _credStorage.saveUserCredentials(email, password);
      }
      if (res.isSuccess) {
        await ref.read(authStateProvider.notifier).saveAuthData(res.data!);
        await ref.read(authStateProvider.future);
      } else {
        state = AsyncError(res.error!, StackTrace.current);
      }
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    } finally {
      ref.invalidateSelf();
    }
  }
}
