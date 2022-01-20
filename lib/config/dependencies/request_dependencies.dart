import 'package:get_it/get_it.dart';
import 'package:cleantdd/data/data.dart';

class RequestDependencies {
  static Future setup(GetIt injector) async {
    injector.registerFactory<ContinentReq>(() => ContinentReq());
  }
}
