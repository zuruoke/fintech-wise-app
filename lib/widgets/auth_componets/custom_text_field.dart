import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/widgets/auth_componets/decorated_container.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final String hintText;
  final bool isPassword;
  const CustomTextField(
      {Key? key,
      required this.text,
      required this.hintText,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 100,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: appTextStyle(
                fontSize: 16,
                color: const Color(0xFF0B0B0B),
                fontWeight: FontWeight.w400),
          ),
          DecoratedContainer(
            hintText: hintText,
            isPassword: isPassword,
          )
        ],
      ),
    );
  }
}
