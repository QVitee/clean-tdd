import 'dart:async';
import 'package:cleantdd/config/config.dart';
import 'package:cleantdd/core/core.dart';

class AppBloc {
  static final AppBloc _appBloc = AppBloc._internal();

  factory AppBloc() {
    return _appBloc;
  }

  AppBloc._internal();

  // Functions
  Future<void> initDependencies() async {
    await AppConfig.instance.loadConfig(env: Environment.dev);
    await AppDependencies.setup();
  }
}
