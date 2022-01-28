import 'package:flutter/material.dart';

class CancelWidget extends StatelessWidget {
  const CancelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            color: const Color(0xFFECECEC),
            borderRadius: BorderRadius.circular(7.2)),
        child: const Icon(
          Icons.cancel_outlined,
          color: Colors.black,
          size: 15,
        ),
      ),
    );
  }
}
