import 'package:cashwise/utils/constants.dart';
import 'package:flutter/material.dart';

class DecoratedNavBar extends StatelessWidget {
  const DecoratedNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 40,
        width: 40,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: const Color(0xFFF2EFFF),
            borderRadius: BorderRadius.circular(12)),
        child: const Icon(
          Icons.arrow_back_ios,
          size: 16,
          color: appColor,
        ),
      ),
    );
  }
}
