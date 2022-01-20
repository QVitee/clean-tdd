import 'package:cleantdd/core/core.dart';

import 'base_preferences.dart';

class SharedPreferences extends BasePreference {
  static final SharedPreferences _instance = SharedPreferences._internal();

  static SharedPreferences get instance => _instance;

  SharedPreferences._internal();

  Future<dynamic> get accessToken => getValue(PreferenceKey.accessToken);

  Future setAccessToken(String accessToken) =>
      setValue(PreferenceKey.accessToken, accessToken);

  Future<dynamic> get tempToken => getValue(PreferenceKey.tempToken);

  Future setTempToken(String tempToken) =>
      setValue(PreferenceKey.tempToken, tempToken);

  Future<dynamic> get refreshToken => getValue(PreferenceKey.refreshToken);

  Future setRefreshToken(String refreshToken) =>
      setValue(PreferenceKey.refreshToken, refreshToken);

  Future<dynamic> get expiresIn => getValue(PreferenceKey.expiresIn);

  Future setExpiresIn(String expiresIn) =>
      setValue(PreferenceKey.expiresIn, expiresIn);

  Future<dynamic> get refreshTokenExpiredIn =>
      getValue(PreferenceKey.refreshTokenExpiresIn);

  Future setRefreshTokenExpiresIn(String expiresIn) =>
      setValue(PreferenceKey.refreshTokenExpiresIn, expiresIn);

  Future<bool> get isFirstLaunch async =>
      (await getValue(PreferenceKey.isFirstLaunch)) as bool;

  Future setIsFirstLaunch(bool isFirstLaunch) =>
      setValue(PreferenceKey.isFirstLaunch, isFirstLaunch);

  Future<String?> get country async =>
      (await getValue(PreferenceKey.country))?.toString();

  Future setCountry(String country) => setValue(PreferenceKey.country, country);

  Future<String> get language async =>
      (await getValue(PreferenceKey.language)).toString();

  Future setLanguage(String language) =>
      setValue(PreferenceKey.language, language);

  Future<int> get badge async => (await getValue(PreferenceKey.badge)) as int;

  Future setBadge(int badge) => setValue(PreferenceKey.badge, badge);

  Future<bool> get expiredOnBackground async =>
      (await getValue(PreferenceKey.expiredOnBackground)) as bool;

  Future setExpiredOnBackground(bool isExpired) =>
      setValue(PreferenceKey.expiredOnBackground, isExpired);
}
