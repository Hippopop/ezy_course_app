import 'package:ezy_course_app/src/constants/server/api_config.dart';
import 'package:ezy_course_app/src/domain/common/models/auth_data/auth_data.dart';
import 'package:ezy_course_app/src/domain/server/auth_repository/auth_repository.dart';
import 'package:ezy_course_app/src/domain/server/source/helpers/config_provider.dart';
import 'package:ezy_course_app/src/domain/server/source/helpers/response_wrapper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(requestHandler: ref.watch(requestHandlerProvider));
});

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({required super.requestHandler});

  @override
  Future<ResponseWrapper<AuthData>> login({
    required String email,
    required String password,
  }) async {
    final raw = await requestHandler.post(
      APIConfig.login,
      baseUrl: APIConfig.loginBaseURL,
      {
        ...{"email": email, "password": password},
        "app_token": "", // Keep it empty string!
      },
    );
    return ResponseWrapper<AuthData>.fromMap(
      rawResponse: raw,
      purserFunction: (rawData) => AuthData.fromJson(rawData),
    );
  }
}
