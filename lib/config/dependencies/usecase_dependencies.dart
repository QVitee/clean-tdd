import 'package:cleantdd/domain/domain.dart';
import 'package:get_it/get_it.dart';

class UseCaseDependencies {
  static Future setup(GetIt injector) async {
    injector.registerFactory<ContinentUC>(() => ContinentUC(injector()));
  }
}
