import 'package:cashwise/utils/styles.dart';
import 'package:flutter/material.dart';

class LeadingTile extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final IconData icon;
  final String title;
  const LeadingTile(
      {Key? key,
      required this.height,
      required this.icon,
      required this.title,
      required this.width,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color.withOpacity(.16),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 15,
            color: color,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: appTextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: color),
          )
        ],
      ),
    );
  }
}
