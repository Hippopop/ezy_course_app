import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageConfig {
  final storage = const FlutterSecureStorage();

  Future<void> clearLocalStorage() async {
    await storage.deleteAll();
  }
}
