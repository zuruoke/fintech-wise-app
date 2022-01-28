import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String text;
  final IconData iconData;
  const CustomSearchBar({Key? key, required this.text, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding * size.width, vertical: 5),
      width: size.width,
      height: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF8849F8).withOpacity(.03)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: appTextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: const Color(0xFFA4A4A4),
            ),
          ),
          Icon(
            iconData,
            size: 25,
            color: const Color(0xFFA4A4A4),
          )
        ],
      ),
    );
  }
}
