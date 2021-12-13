import 'package:cashwise/utils/constants.dart';
import 'package:flutter/material.dart';

class UploadPicTile extends StatelessWidget {
  const UploadPicTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 24,
        width: 24,
        decoration:
            const BoxDecoration(color: hintColor, shape: BoxShape.circle),
        child: const Icon(Icons.camera_enhance, size: 10));
  }
}
