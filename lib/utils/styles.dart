import 'package:cashwise/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

appTextStyle(
    {required double fontSize,
    Color color = black,
    FontWeight fontWeight = FontWeight.normal,
    double? lineHeight}) {
  return GoogleFonts.rubik(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      height: lineHeight);
}

customBoxShadow() {
  return BoxShadow(
      color: Colors.black.withOpacity(.06),
      spreadRadius: 1,
      blurRadius: 16,
      offset: const Offset(0, 8));
}
