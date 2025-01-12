import 'package:ezy_course_app/src/constants/server/api_config.dart';
import 'package:ezy_course_app/src/domain/server/source/helpers/request_handler_provider.dart';
import 'package:ezy_course_app/src/services/authentication/authentication_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final requestHandlerProvider = Provider<RequestHandler>(
  (ref) {
    final state = ref.watch(authStateProvider);
    return RequestHandler(
      baseURl: APIConfig.baseURL,
      currentToken: state.valueOrNull?.token,
      currentTokenType: state.valueOrNull?.type,
    );
  },
);
