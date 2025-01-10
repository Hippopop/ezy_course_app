import 'package:ezy_course_app/src/domain/storage/source/hive_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStateProvider = FutureProvider<void>(
  (ref) async {
    await HiveConfig.initialize();
  },
);
