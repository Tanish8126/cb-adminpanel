import 'package:flutter/material.dart';

import 'constants.dart';

//Common
TextStyle tsCommon(double size, color) {
  return TextStyle(
      color: color,
      fontWeight: FontWeight.normal,
      fontSize: getProportionateScreenHeight(size));
}

//kPrimaryColor
TextStyle tsP(double size) {
  return TextStyle(
      color: kPrimaryColor,
      fontWeight: FontWeight.normal,
      fontSize: getProportionateScreenHeight(size));
}

TextStyle tsPW(double size, weight) {
  return TextStyle(
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight,
      color: kPrimaryColor);
}

//Secondary Color
TextStyle tsM(double size) {
  return TextStyle(
      color: kSecondaryColor,
      fontWeight: FontWeight.normal,
      fontSize: getProportionateScreenHeight(size));
}

TextStyle tsMW(double size, weight) {
  return TextStyle(
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight,
      color: kSecondaryColor);
}

//Black
TextStyle tsBl(double size) {
  return TextStyle(color: kBlack, fontSize: getProportionateScreenHeight(size));
}

TextStyle tsBlW(double size, weight) {
  return TextStyle(
      color: kBlack,
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight);
}

//Blue
TextStyle tsBu(double size) {
  return TextStyle(color: kBlue, fontSize: getProportionateScreenHeight(size));
}

TextStyle tsBuW(double size, weight) {
  return TextStyle(
      color: kBlue,
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight);
}

//Red
TextStyle tsR(double size) {
  return TextStyle(color: kRed, fontSize: getProportionateScreenHeight(size));
}

TextStyle tsRW(double size, weight) {
  return TextStyle(
      color: kRed,
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight);
}

//White
TextStyle tsW(double size) {
  return TextStyle(color: kWhite, fontSize: getProportionateScreenHeight(size));
}

TextStyle tsWW(double size, weight) {
  return TextStyle(
      color: kWhite,
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight);
}
