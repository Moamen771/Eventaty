import 'package:eventaty/features/splash/ui/view/widgets/splash_anomated_icon.dart';
import 'package:eventaty/features/splash/ui/view/widgets/splash_anomated_text.dart';
import 'package:flutter/Material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [SplashAnimatedIcon(), SplashAnimatedText()],
      // )
      // .animate(
      //   delay: 2.seconds,
      //   onPlay: (controller) {
      //     controller.repeat();
      //   },
      //   onComplete: (controller) {
      //     controller.reverse();
      //   },
      // )
      // .scaleY(
      //   begin: 0,
      //   end: -0.1,
      //   duration: 2.seconds,
      //   curve: Curves.bounceOut,
    );
  }
}
