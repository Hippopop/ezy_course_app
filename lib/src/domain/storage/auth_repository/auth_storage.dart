import '../source/secure_storage.dart';

class AuthenticationStorage {
  const AuthenticationStorage();
  StorageConfig get _config => StorageConfig();

  static const tokenTypeKey = "#TOKEN_TYPE";
  static const accessTokenKey = "#ACCESS_TOKEN";

  Future<void> saveUserToken(String? accessToken, String? tokenType) async {
    if (accessToken == null || tokenType == null) return;
    await _config.storage.write(key: tokenTypeKey, value: tokenType);
    await _config.storage.write(key: accessTokenKey, value: accessToken);
  }

  Future<({String tokenType, String accessToken})?> getUserToken() async {
    final type = await _config.storage.read(key: tokenTypeKey);
    final token = await _config.storage.read(key: accessTokenKey);
    return (token == null || type == null)
        ? null
        : (accessToken: token, tokenType: type);
  }

  Future<void> clearAuthData() async {
    await _config.storage.delete(key: tokenTypeKey);
    await _config.storage.delete(key: accessTokenKey);
  }
}
