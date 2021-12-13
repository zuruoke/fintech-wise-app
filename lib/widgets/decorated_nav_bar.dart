import 'package:cashwise/utils/constants.dart';
import 'package:flutter/material.dart';

class DecoratedNavBar extends StatelessWidget {
  const DecoratedNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: hintColor, borderRadius: BorderRadius.circular(12)),
      child: const Icon(
        Icons.arrow_back_ios,
        size: 16,
        color: black,
      ),
    );
  }
}
