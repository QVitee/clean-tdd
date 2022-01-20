import 'package:cleantdd/core/core.dart';
import 'package:cleantdd/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'config/config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppBloc().initDependencies().then((_) => runApp(App()));
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  final initRoute = Routes.continent;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CleanTDD',
      debugShowCheckedModeBanner: false,
      theme: ThemeBuilder.build(context, ''),
      themeMode: ThemeBuilder.themeMode(AppTheme.light.value),
      onGenerateRoute: Routes.getRoute,
      onGenerateInitialRoutes: (_) => [
        Routes.getRouteWithName(routeName: initRoute),
      ],
      builder: EasyLoading.init(),
    );
  }
}
