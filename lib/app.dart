import 'package:eventaty/features/auth/ui/view/sign_up_view.dart';
import 'package:flutter/material.dart';

class Eventaty extends StatelessWidget {
  const Eventaty({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpView(),
    );
  }
}
