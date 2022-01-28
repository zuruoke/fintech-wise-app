import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/pages/profile_page/components/profile_pic_tile.dart';
import 'package:cashwise/view/pages/profile_page/components/profile_tile.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/add_friends.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/debit_cards.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/my_accounts.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/view_balance.dart';
import 'package:cashwise/widgets/top_row.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        margin:
            EdgeInsets.symmetric(horizontal: horizontalPadding * size.width),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 0.06 * size.height,
          ),
          const TopRowWidget(),
          SizedBox(
            height: 0.06 * size.height,
          ),
          Text(
            "Profile",
            style: appTextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 0.01 * size.height,
          ),
          SizedBox(
              height: 0.2 * size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProfilePicTile(),
                  Column(
                    children: [
                      Text(
                        'Lyndall Urwaick',
                        style: appTextStyle(
                            fontSize: 20,
                            color: appColor,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 0.01 * size.height,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "@lyndall  ",
                            style: appTextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFA4A4A4)),
                          ),
                          Text(" | ",
                              style: appTextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFFA4A4A4))),
                          Text("  53 Friends",
                              style: appTextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFFA4A4A4)))
                        ],
                      )
                    ],
                  )
                ],
              )),
          SizedBox(
            height: 0.07 * size.height,
          ),
          ProfileTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const MyAccount()));
            },
            iconData: Icons.person,
            title: "My Account",
            subTitle: "Manage your profile.",
          ),
          SizedBox(
            height: 0.04 * size.height,
          ),
          ProfileTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const DebitCards()));
            },
            iconData: Icons.payment,
            title: "Debit Cards",
            subTitle: "Add/remove debit cards.",
          ),
          SizedBox(
            height: 0.04 * size.height,
          ),
          ProfileTile(
              iconData: Icons.account_balance_wallet_rounded,
              title: "Balance",
              subTitle: "View history of completed resources.",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ViewBalance()));
              }),
          SizedBox(
            height: 0.04 * size.height,
          ),
          const ProfileTile(
            iconData: Icons.account_balance_rounded,
            title: "Account Statement",
            subTitle: "View history of completed resources.",
          ),
          SizedBox(
            height: 0.04 * size.height,
          ),
          const ProfileTile(
            iconData: Icons.qr_code_outlined,
            title: "Cashwise QR tag",
            subTitle: "View history of completed courses.",
          ),
          SizedBox(
            height: 0.04 * size.height,
          ),
          ProfileTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const AddFriend(
                            text: "Add Friend",
                          )));
            },
            iconData: Icons.person_add,
            title: "Add friend",
            subTitle: "Add friends to your cashwise.",
          ),
        ])));
  }
}
