import 'package:flutter/material.dart';

class CheckedCircleContainer extends StatelessWidget {
  final Color? color;
  final bool haveBorder;
  const CheckedCircleContainer({Key? key, this.color, this.haveBorder = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 22,
      child: Icon(Icons.done_sharp,
          size: 15, color: haveBorder ? const Color(0xFFD6D6D6) : Colors.white),
      decoration: BoxDecoration(
          color: color ?? Colors.white,
          shape: BoxShape.circle,
          border: haveBorder
              ? Border.all(
                  width: 2,
                  color: const Color(0xFFD6D6D6),
                )
              : null),
    );
  }
}
