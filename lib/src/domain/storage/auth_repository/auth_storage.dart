import 'package:hive/hive.dart';
import '../source/hive_config.dart';

class AuthenticationStorage {
  const AuthenticationStorage();
  HiveConfig get _config => HiveConfig();

  Box<String> get _myBox => _config.authenticationBox;

  static const tokenTypeKey = "#TOKEN_TYPE";
  static const accessTokenKey = "#ACCESS_TOKEN";

  Future<void> saveUserToken(String? accessToken, String? tokenType) async {
    if (accessToken == null || tokenType == null) return;
    await _myBox.put(tokenTypeKey, tokenType);
    await _myBox.put(accessTokenKey, accessToken);
  }

  ({String tokenType, String accessToken})? getUserToken() {
    final type = _myBox.get(tokenTypeKey);
    final token = _myBox.get(accessTokenKey);

    return (token == null || type == null)
        ? null
        : (accessToken: token, tokenType: type);
  }

  Future<void> clearAuthData() async {
    await _myBox.clear();
  }
}
