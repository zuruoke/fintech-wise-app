import 'package:cashwise/utils/styles.dart';
import 'package:flutter/material.dart';

class DayTile extends StatelessWidget {
  final Color textcolor;
  final Color color;
  final String weekday;
  const DayTile(
      {Key? key,
      required this.color,
      required this.weekday,
      required this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 24,
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(33)),
      child: Text(
        weekday,
        style: appTextStyle(fontSize: 12, color: textcolor),
      ),
    );
  }
}
