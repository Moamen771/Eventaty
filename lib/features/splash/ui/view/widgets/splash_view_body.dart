import 'package:eventaty/features/splash/ui/view/widgets/splash_logo.dart';
import 'package:eventaty/core/helpers/extensions/media_query_values.dart';
import '../../../../../core/utlis/images_manager.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImagesManager.splashBackground),
        ),
      ),
      child: const SplashLogo(),
    );
  }
}
