import 'package:global_configuration/global_configuration.dart';
import 'package:cleantdd/core/resources/enums.dart';

class AppConfig {
  GlobalConfiguration get globalConfiguration => GlobalConfiguration();

  static final AppConfig _singleton = AppConfig._internal();

  static AppConfig get instance => _singleton;

  AppConfig._internal();

  Future loadConfig({Environment env = Environment.dev}) async {
    final appEnv = env.value;
    await GlobalConfiguration().loadFromAsset('app_config_$appEnv');
  }

  String get apiEndpoint => globalConfiguration.getValue<String>('apiEndpoint');

  String get socketEndpoint =>
      globalConfiguration.getValue<String>('socketEndpoint');

  int get connectTimeout => globalConfiguration.getValue<int>('connectTimeout');

  int get receiveTimeout => globalConfiguration.getValue<int>('connectTimeout');

  String get apiNewsEndpoint =>
      globalConfiguration.getValue<String>('apiNewsEndpoint');

  String fcmToken = '';

  String tempToken = '';

  String get amplifyEndpoint =>
      globalConfiguration.getValue<String>('amplifyEndpoint');

  String get amplifyAPIKey =>
      globalConfiguration.getValue<String>('amplifyAPIKey');
}
