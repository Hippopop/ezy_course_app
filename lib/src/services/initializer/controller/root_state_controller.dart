import 'package:ezy_course_app/src/services/authentication/authentication_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStateProvider = FutureProvider<void>(
  (ref) async {
    await ref.watch(authStateProvider.future);
  },
);
