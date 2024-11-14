import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ecommerce_app/src/shared/data/local/token_storage_service.dart';

class SecureTokenStorageService implements TokenStorageService {
  final String _refreshTokenKey = 'refresh_token';
  final String _accessTokenKey = 'access_token';

  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  @override
  Future<void> saveAccessToken(String accessToken) async {
    await _secureStorage.write(key: _accessTokenKey, value: accessToken);
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) async {
    await _secureStorage.write(key: _refreshTokenKey, value: refreshToken);
  }

  @override
  Future<String?> getAccessToken() async {
    return await _secureStorage.read(key: _accessTokenKey);
  }

  @override
  Future<String?> getRefreshToken() async {
    return await _secureStorage.read(key: _refreshTokenKey);
  }

  @override
  Future<void> deleteTokens() async {
    await _secureStorage.delete(key: _accessTokenKey);
    await _secureStorage.delete(key: _refreshTokenKey);
    await _secureStorage.deleteAll();
  }

  @override
  Future<void> deleteAccessToken() async {
    await _secureStorage.delete(key: _accessTokenKey);
  }
}
