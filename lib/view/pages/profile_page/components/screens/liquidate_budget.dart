import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/widgets/action_background.dart';
import 'package:flutter/material.dart';

class LiquidateBudget extends StatelessWidget {
  final double height;
  final double width;
  const LiquidateBudget({Key? key, required this.height, required this.width})
      : super(key: key);

  _body() {
    return SizedBox(
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Budget Liquidated!",
            style: appTextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: appColor),
          ),
          Container(
            height: 130,
            width: 130,
            child: const Icon(Icons.delete_outline_outlined,
                size: 80, color: Colors.white),
            decoration: const BoxDecoration(
                color: Color(0xFFFF4141), shape: BoxShape.circle),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.05 * width),
            child: Text(
                "You have liquidated your active budget, the funds will be transferred to your free cash",
                style: appTextStyle(
                    fontSize: 16,
                    lineHeight: 1.55,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFA4A4A4))),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ActionBackground(child: _body()));
  }
}
