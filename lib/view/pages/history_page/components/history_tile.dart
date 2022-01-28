import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:flutter/material.dart';

class HistoryTile extends StatelessWidget {
  final String text;
  final IconData iconData;
  final bool isCredit;
  final String type;
  const HistoryTile(
      {Key? key,
      required this.iconData,
      this.isCredit = false,
      required this.type,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        height: size.width / 3.519,
        width: size.width,
        padding: EdgeInsets.symmetric(
            horizontal: 0.08 * size.width,
            vertical: 0.08 * (size.width / 3.519)),
        decoration: BoxDecoration(
            boxShadow: [customBoxShadow()],
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
          SizedBox(
              height: 0.55 * (size.width / 3.519),
              width: 0.6 * size.width,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          text,
                          style: appTextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text('#20211118922358',
                            style: appTextStyle(
                              fontSize: 10,
                              color: const Color(0xFFA4A4A4),
                            )),
                        Text("14:30",
                            style: appTextStyle(
                              fontSize: 10,
                              color: const Color(0xFFA4A4A4),
                            ))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        isCredit
                            ? Text("+N100,000",
                                style: appTextStyle(
                                    fontSize: 12,
                                    color: const Color(0xFF04B86D)))
                            : Text(
                                "-N100,000",
                                style: appTextStyle(
                                    fontSize: 12,
                                    color: const Color(0xFFF14141)),
                              ),
                        Text(
                          "@Konga",
                          style: appTextStyle(
                              fontSize: 10, color: const Color(0xFFA4A4A4)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 13,
                          width: 40,
                          decoration: BoxDecoration(
                              color: type == "received"
                                  ? const Color(0xFFE234F1).withOpacity(.08)
                                  : type == "payonce"
                                      ? const Color(0xFF34CFF1).withOpacity(.08)
                                      : type == "BNPL"
                                          ? const Color(0xFFFEB700)
                                              .withOpacity(.08)
                                          : appColor.withOpacity(.08),
                              borderRadius: BorderRadius.circular(16)),
                          child: type == "received"
                              ? Text(
                                  'Received',
                                  style: appTextStyle(
                                      fontSize: 8,
                                      color: const Color(0xFFE234F1)),
                                )
                              : type == "payonce"
                                  ? Text(
                                      'Pay Once',
                                      style: appTextStyle(
                                          fontSize: 8,
                                          color: const Color(0xFF34CFF1)),
                                    )
                                  : type == "BNPL"
                                      ? Text(
                                          'BNPL',
                                          style: appTextStyle(
                                              fontSize: 8,
                                              color: const Color(0xFFFEB700)),
                                        )
                                      : Text(
                                          'Split bill',
                                          style: appTextStyle(
                                              fontSize: 8, color: appColor),
                                        ),
                        )
                      ],
                    )
                  ]))
        ]));
  }
}
