import 'package:get_it/get_it.dart';
import 'package:cleantdd/core/core.dart';

class ExternalDependencies {
  static Future setup(GetIt injector) async {
    injector.registerFactory<AppClient>(() => AppClient());
  }
}
