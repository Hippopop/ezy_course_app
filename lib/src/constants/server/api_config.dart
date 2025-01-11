import 'dart:io';

import 'package:flutter/foundation.dart';

class APIConfig {
  const APIConfig._();
  static String get baseURL => (!kIsWeb && Platform.isAndroid)
      ? const String.fromEnvironment("BASE_URL_ANDROID")
      : const String.fromEnvironment("BASE_URL");

  static String loginBaseURL = "https://ezycourse.com/api/app/student";
  static String login = "/auth/login";
}
