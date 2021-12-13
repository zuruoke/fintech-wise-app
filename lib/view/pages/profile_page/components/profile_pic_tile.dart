import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/view/pages/profile_page/components/upload_pic_tile.dart';
import 'package:flutter/material.dart';

class ProfilePicTile extends StatelessWidget {
  const ProfilePicTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 0.25 * size.width,
      width: 0.25 * size.width,
      decoration: const BoxDecoration(color: bgColor, shape: BoxShape.circle),
      child: Stack(
        children: [
          Positioned(
              top: 0.19 * size.width,
              left: 0.19 * size.width,
              child: const UploadPicTile())
        ],
      ),
    );
  }
}
