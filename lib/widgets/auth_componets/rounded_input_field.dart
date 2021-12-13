import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool isPassword;

  const RoundedInputField(
      {Key? key,
      required this.hintText,
      this.controller,
      required this.isPassword})
      : super(key: key);

  _suffixIcon() {
    return SizedBox(
      width: 60,
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Show",
              style: appTextStyle(fontSize: 16, color: hintColor),
            ),
            const Icon(
              Icons.remove_red_eye,
              size: 16,
              color: hintColor,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: appTextStyle(fontSize: 16, color: hintColor),
          border: InputBorder.none,
          suffixIcon: isPassword ? _suffixIcon() : null),
    );
  }
}
