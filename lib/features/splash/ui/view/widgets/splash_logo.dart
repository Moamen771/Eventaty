import '../../../../../core/utlis/styles_manager.dart';
import '../../../../../core/utlis/color_manager.dart';
import '../../../../../core/utlis/icons_manager.dart';
import 'package:flutter/Material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(IconsManager.appIcon),
        RichText(
          text: TextSpan(
            children: <InlineSpan>[
              TextSpan(
                text: 'ven',
                style: getBoldStyle(
                  color: ColorManager.accentPurple,
                  fontSize: 45,
                ),
              ),
              TextSpan(
                text: 'taty',
                style: getBoldStyle(
                  color: ColorManager.accentDarkCyan,
                  fontSize: 45,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
