enum AppTheme { light, dark, system }
enum ImageSourceType { network, asset, local }
enum Environment { dev, prod, uat , stg }
enum Language { vi, en }
enum EFileSizeType { B, KB, MB, GB, TB, PB, EB, ZB, YB }

extension EnvironmentExt on Environment {
  String get value => ['dev', 'prod', 'uat', 'stg'][index];
}

extension AppThemeExt on AppTheme {
  String get value => ['light', 'dark', 'system'][index];
}

extension ImageSourceTypeExt on ImageSourceType {
  String get value => ['network', 'asset', 'local'][index];
}

extension LanguageExt on Language {
  String get value => ['vi', 'en'][index];
}

extension EFileSizeTypeExt on EFileSizeType {
  String get value => ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'][index];
}

