import 'package:get_it/get_it.dart';
import 'package:cleantdd/data/data.dart';
import 'package:cleantdd/domain/domain.dart';

class RepoDependencies {
  static Future setup(GetIt injector) async {
    injector.registerLazySingleton<ContinentRepo>(
        () => ContinentRepoImpl(injector(), injector()));
  }
}
