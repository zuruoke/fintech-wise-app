import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:flutter/material.dart';

class SmallRoundedTextField extends StatelessWidget {
  final String hintText;
  const SmallRoundedTextField({Key? key, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        alignment: Alignment.center,
        height: 0.1 * size.width,
        width: 0.1 * size.width,
        padding: EdgeInsets.symmetric(
            horizontal: 0.035 * size.width, vertical: 0.0009 * size.height),
        decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: hintColor),
            borderRadius: BorderRadius.circular(12)),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: appTextStyle(fontSize: 16),
            border: InputBorder.none,
          ),
        ));
  }
}
