import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/widgets/action_background.dart';
import 'package:flutter/material.dart';

class TransactionSuccessful extends StatelessWidget {
  final String title;
  final String content;
  const TransactionSuccessful(
      {Key? key, required this.content, required this.title})
      : super(key: key);

  _body(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 0.4 * size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: appTextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: appColor),
          ),
          const SizedBox(height: 10),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(
                color: Color(0xFF10E48B), shape: BoxShape.circle),
            child: const Icon(
              Icons.done_rounded,
              color: Colors.white,
              size: 60,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.05 * size.width),
            child: Text(content,
                textAlign: TextAlign.center,
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
    return Scaffold(
      body: ActionBackground(actionText: "Done", child: _body(context)),
    );
  }
}
