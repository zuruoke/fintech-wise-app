import 'package:cashwise/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

appTextStyle(
    {required double fontSize,
    Color color = black,
    FontWeight fontWeight = FontWeight.normal}) {
  return GoogleFonts.rubik(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}
