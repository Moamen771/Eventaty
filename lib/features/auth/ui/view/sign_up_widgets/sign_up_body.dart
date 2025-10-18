import '../../../../../core/helpers/extensions/media_query_values.dart';
import '../../../../../core/utlis/styles_manager.dart';
import '../../../../../core/utlis/color_manager.dart';
import '../../../../../core/utlis/font_manager.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: context.height,
          width: context.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash_background.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Image.asset('assets/icons/app_icon.png'),
              ),
              Text(
                'Eventaty',
                style: getRegularStyle().copyWith(
                  fontSize: FontSize.s24,
                  color: ColorManager.typBlack,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
