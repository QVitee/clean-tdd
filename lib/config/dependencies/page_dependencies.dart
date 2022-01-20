import 'package:cleantdd/config/router/router.dart';
import 'package:cleantdd/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class PageDependencies {
  static Future setup(GetIt injector) async {
    injector.registerFactory<Widget>(() => ContinentPage(),
        instanceName: Routes.continent);
  }
}
