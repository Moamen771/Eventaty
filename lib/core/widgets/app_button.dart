import 'package:eventaty/core/utlis/color_manager.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.onPressed,
    required this.child,
    this.backgroundColor,
    this.foregroundColor,
    this.width,
    this.height,
    this.radius,
  });

  final Function()? onPressed;
  final Widget child;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? width;
  final double? height;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? ColorManager.accentPurple,
        foregroundColor: foregroundColor ?? ColorManager.typGray1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        fixedSize: Size(width ?? 14, height ?? 14),
      ),
      child: child,
    );
  }
}
