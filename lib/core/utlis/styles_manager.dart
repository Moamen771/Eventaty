import 'package:flutter/material.dart';
import 'color_manager.dart';
import 'font_manager.dart';

TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  Color color = ColorManager.typBlack,
}) {
  return TextStyle(
    color: color,
    fontFamily: FontConstants.fontFamily,
    fontSize: fontSize,
    fontWeight: FontWeightManager.light,
  );
}

TextStyle getRegularStyle({
  double fontSize = FontSize.s12,
  Color color = ColorManager.typBlack,
  TextOverflow? overflow,
}) {
  return TextStyle(
    color: color,
    fontFamily: FontConstants.fontFamily,
    fontSize: fontSize,
    overflow: overflow,
    fontWeight: FontWeightManager.regular,
  );
}

TextStyle getMediumStyle({
  double fontSize = FontSize.s12,
  Color color = ColorManager.typBlack,
  TextOverflow? overflow,
}) {
  return TextStyle(
    color: color,
    fontFamily: FontConstants.fontFamily,
    fontSize: fontSize,
    overflow: overflow ?? TextOverflow.ellipsis,
    fontWeight: FontWeightManager.medium,
  );
}

TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  Color color = ColorManager.typBlack,
  TextOverflow? overflow,
}) {
  return TextStyle(
    color: color,
    fontFamily: FontConstants.fontFamily,
    fontSize: fontSize,
    overflow: overflow,
    fontWeight: FontWeightManager.semiBold,
  );
}

TextStyle getBoldStyle({
  String fontFamily = FontConstants.fontFamily,
  double fontSize = FontSize.s12,
  Color color = ColorManager.typBlack,
  TextOverflow? overflow,
}) {
  return TextStyle(
    color: color,
    fontFamily: fontFamily,
    overflow: overflow ?? TextOverflow.ellipsis,
    fontSize: fontSize,
    fontWeight: FontWeightManager.bold,
  );
}

TextStyle getExtraBoldStyle({
  String fontFamily = FontConstants.fontFamily,
  double fontSize = FontSize.s12,
  Color color = ColorManager.typBlack,
  TextOverflow? overflow,
}) {
  return TextStyle(
    color: color,
    fontFamily: fontFamily,
    overflow: overflow ?? TextOverflow.ellipsis,
    fontSize: fontSize,
    fontWeight: FontWeightManager.extraBold,
  );
}
