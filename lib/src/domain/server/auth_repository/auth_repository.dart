import 'package:ezy_course_app/src/domain/common/models/auth_data/auth_data.dart';

import '../source/helpers/request_handler_provider.dart';
import '../source/helpers/response_wrapper.dart';


abstract class AuthRepository {
  final RequestHandler requestHandler;

  AuthRepository({
    required this.requestHandler,
  });

  Future<ResponseWrapper<AuthData>> login({
    required String email,
    required String password,
  });
}
