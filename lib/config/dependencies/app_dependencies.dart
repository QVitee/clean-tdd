import 'dart:developer' as developer;

import 'package:get_it/get_it.dart';
import 'package:cleantdd/core/core.dart';

import 'dependencies.dart';

class AppDependencies {
  static GetIt get _injector => GetIt.I;

  static Future<void> setup() async {
    try {
      _injector.registerLazySingleton<SharedPreferences>(
          () => SharedPreferences.instance);
      await RequestDependencies.setup(_injector);
      await ExternalDependencies.setup(_injector);
      await RepoDependencies.setup(_injector);
      await UseCaseDependencies.setup(_injector);
      await BlocDependencies.setup(
        _injector,
      );
      await PageDependencies.setup(_injector);
    } catch (ex) {
      developer.log('Init Dependencies failed: $ex');
    }
  }
}
