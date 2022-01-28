import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/pages/profile_page/components/profile_tile.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/link_bvn.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/personal_info.dart';
import 'package:cashwise/widgets/decorated_nav_bar.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin:
            EdgeInsets.symmetric(horizontal: horizontalPadding * size.width),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.06 * size.height,
              ),
              const DecoratedNavBar(),
              SizedBox(
                height: 0.05 * size.height,
              ),
              Text(
                "My account",
                style: appTextStyle(
                    fontSize: 24, fontWeight: FontWeight.w500, color: appColor),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(vertical: 0.06 * (0.45 * size.height)),
                padding:
                    EdgeInsets.symmetric(vertical: 0.05 * (0.45 * size.height)),
                height: 0.35 * (0.45 * size.height),
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: appColor.withOpacity(.12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Account details",
                      style: appTextStyle(
                          fontSize: 12,
                          color: appColor,
                          fontWeight: FontWeight.w400),
                    ),
                    Text("1932 575 895",
                        style: appTextStyle(
                            fontSize: 18,
                            color: appColor,
                            fontWeight: FontWeight.w600)),
                    Text("Lyndall Urwick",
                        style: appTextStyle(
                            fontSize: 14,
                            color: appColor,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              ProfileTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const PersonalInfo()));
                },
                iconData: Icons.person,
                title: "Personal information",
                subTitle: "View/edit your account information.",
              ),
              SizedBox(
                height: 0.04 * size.height,
              ),
              ProfileTile(
                onTap: () {},
                iconData: Icons.person,
                title: "Update KYC",
                subTitle: "Update KYC information.",
              ),
              SizedBox(
                height: 0.04 * size.height,
              ),
              ProfileTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const LinkBVN()));
                },
                iconData: Icons.person,
                title: "Link BVN",
                subTitle: "Link your BVN to cashwise.",
              ),
              SizedBox(
                height: 0.04 * size.height,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
