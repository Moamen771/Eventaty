import 'package:eventaty/features/splash/ui/view/splash_view.dart';
import 'package:flutter/Material.dart';
import 'app_routes.dart';

class Routes {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => const SplashView());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    }
  }
}
