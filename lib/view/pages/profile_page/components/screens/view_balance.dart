import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/pages/profile_page/components/box_tile.dart';
import 'package:cashwise/view/pages/profile_page/components/profile_tile.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/fund_cashwise.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/widgets/show_bottom_sheet.dart';
import 'package:cashwise/widgets/action_background.dart';
import 'package:cashwise/widgets/decorated_nav_bar.dart';
import 'package:flutter/material.dart';

class ViewBalance extends StatelessWidget {
  const ViewBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            margin: EdgeInsets.symmetric(
                horizontal: horizontalPadding * size.width),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      DecoratedNavBar(),
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.person_add_rounded,
                            size: 30,
                            color: appColor,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 0.06 * size.height,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Balance",
                        style: appTextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: appColor),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 32,
                        width: 80,
                        child: Text(
                          'USD',
                          style: appTextStyle(
                              fontSize: 16, color: const Color(0xFFA4A4A4)),
                        ),
                        decoration: BoxDecoration(
                            color: const Color(0xFFECECEC),
                            borderRadius: BorderRadius.circular(16)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 0.03 * size.height,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoxTile(
                            textColor: const Color(0xFF1CE08E),
                            color: const Color(0xFF1CE08E).withOpacity(.16)),
                        BoxTile(
                            textColor: const Color(0xFF0082E4),
                            color: const Color(0xFF0082E4).withOpacity(.16))
                      ]),
                  SizedBox(
                    height: 0.03 * size.height,
                  ),
                  Text(
                    "Actions",
                    style: appTextStyle(
                        fontSize: 22, color: const Color(0xFF0B0B0B)),
                  ),
                  SizedBox(
                    height: 0.03 * size.height,
                  ),
                  ProfileTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  const FundCashWise(actionText: "Next")));
                    },
                    iconData: Icons.account_box_outlined,
                    title: "Fund Cashwise",
                    subTitle: "View history of completed courses",
                  ),
                  SizedBox(
                    height: 0.04 * size.height,
                  ),
                  const ProfileTile(
                    iconData: Icons.account_box_outlined,
                    title: "Withdraw funds",
                    subTitle: "View history of completed courses",
                  ),
                  SizedBox(
                    height: 0.04 * size.height,
                  ),
                  ProfileTile(
                    iconData: Icons.account_box_outlined,
                    title: "Liquidate budget",
                    subTitle: "View history of completed courses",
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (builder) => const CustomModalBottomSheet(),
                          backgroundColor: Colors.transparent);
                    },
                  ),
                ]))));
  }
}
