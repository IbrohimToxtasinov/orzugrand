import 'package:flutter/material.dart';
import 'package:orzugrand/screens/splash/splash_screen.dart';
import 'package:orzugrand/screens/tab_box/tab_box.dart';

abstract class RouteName {
  static const splash = 'splash';
  static const tabBox = 'tabBox';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RouteName.tabBox:
        return MaterialPageRoute(builder: (_) => const TabBox());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
