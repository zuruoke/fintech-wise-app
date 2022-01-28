import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final Color selected;
  final String text;
  final Color textColor;
  final IconData iconData;
  const CardTile(
      {Key? key,
      required this.selected,
      required this.text,
      required this.iconData,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width / 5.0,
      width: size.width,
      padding: EdgeInsets.symmetric(
          horizontal: 0.08 * size.width, vertical: 0.08 * (size.width / 4.575)),
      decoration: BoxDecoration(
          boxShadow: [customBoxShadow()],
          color: selected,
          borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: Container(
          alignment: Alignment.center,
          height: size.width / 13.375,
          width: size.width / 13.375,
          decoration: BoxDecoration(
              color: selected, borderRadius: BorderRadius.circular(10)),
          child: Icon(
            iconData,
            size: 21,
            color: appColor,
          ),
        ),
        title: Text(
          text,
          style: appTextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      ),
    );
  }
}
