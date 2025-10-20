import 'package:flutter/Material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../../core/utlis/color_manager.dart';
import '../../../../../core/utlis/font_manager.dart';
import '../../../../../core/utlis/styles_manager.dart';

class SplashAnimatedText extends StatelessWidget {
  const SplashAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <InlineSpan>[
          TextSpan(
            text: 'ven',
            style: getBoldStyle(
              color: ColorManager.accentPurple,
              fontSize: FontSize.s45,
            ),
          ),
          TextSpan(
            text: 'taty',
            style: getBoldStyle(
              color: ColorManager.accentDarkCyan,
              fontSize: FontSize.s45,
            ),
          ),
        ],
      ),
    ).animate().slideX(
      begin: 4,
      end: 0,
      duration: 2.seconds,
      curve: Curves.elasticInOut,
    );
  }
}
