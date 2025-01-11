import '../source/secure_storage.dart';

class CredentialsStorage {
  const CredentialsStorage();
  StorageConfig get _config => StorageConfig();

  static const emailKey = "#EMAIL";
  static const passKey = "#PASSWORD";

  Future<void> saveUserCredentials(String? email, String? password) async {
    if (password == null || email == null) return;
    await _config.storage.write(key: emailKey, value: email);
    await _config.storage.write(key: passKey, value: password);
  }

  Future<({String email, String password})?> getUserCredentials() async {
    final email = await _config.storage.read(key: emailKey);
    final password = await _config.storage.read(key: passKey);
    return (password == null || email == null)
        ? null
        : (password: password, email: email);
  }

  Future<void> clearCredentialsData() async {
    await _config.storage.delete(key: emailKey);
    await _config.storage.delete(key: passKey);
  }
}
