import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subTitle;
  const ProfileTile(
      {Key? key,
      required this.iconData,
      required this.subTitle,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width / 5.0,
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
      child: ListTile(
        leading: Container(
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
        title: Text(
          title,
          style: appTextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          subTitle,
          style: appTextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: const Color(0xFFA4A4A4)),
        ),
        trailing: const Icon(
          Icons.arrow_right_alt,
          color: appColor,
          size: 20,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      ),
    );
  }
}
