import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:flutter/material.dart';

class DecoratedOR extends StatelessWidget {
  const DecoratedOR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Container(
            height: 1,
            width: 0.4 * size.width,
            color: hintColor,
          ),
          Container(
            alignment: Alignment.center,
            width: 0.1 * size.width,
            child: Text(
              "OR",
              style: appTextStyle(fontSize: 16, color: hintColor),
            ),
          ),
          Container(
            height: 1,
            width: 0.4 * size.width,
            color: hintColor,
          )
        ],
      ),
    );
  }
}
