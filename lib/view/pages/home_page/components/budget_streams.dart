import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:flutter/material.dart';

class BudgetStreams extends StatelessWidget {
  final String text;
  final IconData iconData;
  final double position;

  const BudgetStreams(
      {Key? key,
      required this.iconData,
      required this.position,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width / 4.575,
      width: size.width,
      padding: EdgeInsets.symmetric(
          horizontal: 0.08 * size.width, vertical: 0.08 * (size.width / 4.575)),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(0, 3))
      ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            height: size.width / 13.375,
            width: size.width / 13.375,
            decoration: BoxDecoration(
                color: const Color(0xFFF2EFFF),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              iconData,
              size: 16,
              color: appColor,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                text,
                style: appTextStyle(fontSize: 14),
              ),
              Container(
                height: 8,
                width: 0.6 * size.width,
                decoration: BoxDecoration(
                    color: const Color(0xFFF2EFFF),
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    Container(
                      height: 8,
                      width: position * size.width,
                      decoration: BoxDecoration(
                          color: appColor,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
                width: 0.6 * size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Spent: ",
                          style: appTextStyle(fontSize: 10),
                        ),
                        Text(
                          "N30,500",
                          style: appTextStyle(fontSize: 10, color: hintColor),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Allocated: ",
                          style: appTextStyle(
                              fontSize: 10, color: const Color(0xFF04B86D)),
                        ),
                        Text(
                          "N50,000",
                          style: appTextStyle(
                              fontSize: 10, color: Colors.green.shade200),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
