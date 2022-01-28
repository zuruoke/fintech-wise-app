import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/pages/profile_page/components/profile_tile.dart';
import 'package:cashwise/widgets/decorated_nav_bar.dart';
import 'package:flutter/material.dart';

class DebitCards extends StatefulWidget {
  const DebitCards({Key? key}) : super(key: key);

  @override
  _DebitCardsState createState() => _DebitCardsState();
}

class _DebitCardsState extends State<DebitCards> {
  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.06 * size.height,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding * size.width),
                child: const DecoratedNavBar(),
              ),
              SizedBox(
                height: 0.06 * size.height,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding * size.width),
                child: Text(
                  "Debit cards",
                  style: appTextStyle(
                    fontSize: 24,
                    color: appColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 0.045 * size.height,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding * size.width),
                height: 50,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isFirst = true;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "General Cards",
                            style: appTextStyle(
                                fontSize: 16,
                                color: appColor,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            height: isFirst ? 4 : 0,
                            width: isFirst ? 0.45 * size.width : 0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: appColor),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isFirst = false;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Budgets Cards",
                            style: appTextStyle(
                                fontSize: 16,
                                color: appColor,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            height: !isFirst ? 4 : 0,
                            width: !isFirst ? 0.45 * size.width : 0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: appColor),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Available',
                            style: appTextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          width: 67,
                          height: 24,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.08),
                              borderRadius: BorderRadius.circular(16)),
                        ),
                        // SizedBox(
                        //   height: 50,
                        //   width: 50,
                        //   child: Stack(
                        //     children: [
                        //       Image.asset("assets/images/vector_red.png"),
                        //       Positioned(
                        //         top: 0,
                        //         left: 10,
                        //         child: Image.asset("assets/images/vector.png"),
                        //       ),
                        //       Positioned(
                        //         top: 0,
                        //         left: 11,
                        //         child: Image.asset(
                        //             "assets/images/vector_yellow.png"),
                        //       )
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                  ],
                ),
                margin: EdgeInsets.symmetric(
                    horizontal: horizontalPadding * size.width),
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding * size.width, vertical: 25),
                height: 220,
                width: size.width,
                decoration: BoxDecoration(
                    color: appColor, borderRadius: BorderRadius.circular(22)),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding * size.width, vertical: 25),
                child: const ProfileTile(
                    iconData: Icons.ac_unit,
                    subTitle: "Add a new budget card.",
                    title: "Add budget card"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding * size.width, vertical: 25),
                child: const ProfileTile(
                    iconData: Icons.ac_unit,
                    subTitle: "Create cashwise pin for all cards.",
                    title: "Create confirmation pin"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding * size.width, vertical: 25),
                child: const ProfileTile(
                    iconData: Icons.ac_unit,
                    subTitle: "Create cashwise pin for all  cards.",
                    title: "Block/Remove card"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
