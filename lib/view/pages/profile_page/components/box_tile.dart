import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:flutter/material.dart';

class BoxTile extends StatelessWidget {
  final Color color;
  final Color textColor;
  const BoxTile({Key? key, required this.color, required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: 0.40 * size.width,
      height: (0.40 * size.width) / 1.94,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(14)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total balance",
                style: appTextStyle(
                    fontSize: 12,
                    color: textColor,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 0.01 * size.width,
              ),
              Text(
                "\$50,000,000",
                style: appTextStyle(
                    fontSize: 18,
                    color: textColor,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.info_outline_rounded,
              color: textColor,
              size: 13,
            ),
          )
        ],
      ),
    );
  }
}
