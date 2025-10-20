import 'package:eventaty/core/helpers/extensions/media_query_values.dart';
import '../../../../../core/utlis/styles_manager.dart';
import '../../../../../core/utlis/color_manager.dart';
import '../../../../../core/utlis/font_manager.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
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
                radius: 30,
                backgroundColor: Colors.white,
                child: Image.asset('assets/icons/app_icon.png'),
              ),
              Text(
                'Eventaty',
                style: getRegularStyle().copyWith(
                  fontSize: FontSize.s34,
                  color: ColorManager.typBlack,
                ),
              ),
              const SizedBox(height: 20),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 20,
                    children: [
                      Text(
                        'Sign in',
                        style: getRegularStyle().copyWith(
                          fontSize: FontSize.s24,
                          color: ColorManager.typBlack,
                        ),
                      ),
                      TextFormField(
                        cursorColor: ColorManager.typBlack,
                        cursorErrorColor: ColorManager.accentRed,
                        onSaved: (value) {
                          emailController.text = value!;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email_outlined),
                          hintText: 'Email',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: ColorManager.typBlack,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: ColorManager.typBlack,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: ColorManager.accentRed,
                            ),
                          ),
                        ),
                        controller: emailController,
                      ),
                      TextFormField(
                        cursorColor: ColorManager.typBlack,
                        cursorErrorColor: ColorManager.accentRed,
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return 'Please enter your password';
                        //   }
                        //   return passwordController.text.length < 6
                        //       ? 'Password must be at least 6 characters long'
                        //       : null;
                        // },
                        onSaved: (value) {
                          passwordController.text = value!;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_outline),
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: ColorManager.typBlack,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: ColorManager.typBlack,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: ColorManager.accentRed,
                            ),
                          ),
                        ),
                        controller: passwordController,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
