import 'package:get_it/get_it.dart';
import 'package:cleantdd/presentation/blocs/blocs.dart';

class BlocDependencies {
  static Future setup(GetIt injector) async {
    injector.registerFactory<ContinentBloc>(() => ContinentBloc(injector()));
  }
}
