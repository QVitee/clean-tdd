import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  static const continent = '/continent';

  static PageTransition getRoute(RouteSettings settings) {
    return getRouteWithName(settings: settings);
  }

  static PageTransition getRouteWithName(
      {String? routeName, RouteSettings? settings}) {
    Widget widget;
    try {
      widget = GetIt.I.get<Widget>(instanceName: routeName ?? settings?.name);
    } catch (e) {
      widget = Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Not found page!'),
        ),
        body: const Center(child: Text('Not found page!')),
      );
    }
    return PageTransition(
      child: widget,
      type: PageTransitionType.fade,
      duration: Duration(milliseconds: 200),
      reverseDuration: Duration(milliseconds: 200),
      settings: settings,
    );
  }
}
