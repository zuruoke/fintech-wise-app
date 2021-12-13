import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/widgets/auth_componets/rounded_input_field.dart';
import 'package:flutter/material.dart';

class DecoratedContainer extends StatelessWidget {
  final String? hintText;
  final bool isTextField;
  final String? title;
  final bool isPassword;
  final bool takeAction;
  const DecoratedContainer(
      {Key? key,
      this.title,
      this.hintText,
      this.isTextField = true,
      this.takeAction = false,
      required this.isPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: !isTextField ? Alignment.center : null,
      width: size.width,
      height: takeAction ? 64 : 56,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: hintColor),
          borderRadius: BorderRadius.circular(12),
          color: takeAction ? appColor : null),
      child: isTextField
          ? RoundedInputField(
              hintText: hintText!,
              isPassword: isPassword,
            )
          : Text(
              title!,
              style: takeAction
                  ? appTextStyle(fontSize: 18, color: Colors.white)
                  : appTextStyle(fontSize: 16),
            ),
    );
  }
}
