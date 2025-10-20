import 'package:flutter_animate/flutter_animate.dart';
import '../../../../../core/utlis/icons_manager.dart';
import 'package:flutter/Material.dart';

class SplashAnimatedIcon extends StatelessWidget {
  const SplashAnimatedIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(IconsManager.appIcon).animate().slideX(
      begin: -4,
      end: 0,
      duration: 2.seconds,
      curve: Curves.elasticInOut,
    );
  }
}
