import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/pages/history_page/components/day_tile.dart';
import 'package:cashwise/view/pages/history_page/components/history_tile.dart';
import 'package:cashwise/widgets/top_row.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selected = 1;

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "History",
                style: appTextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Container(
                alignment: Alignment.center,
                height: 32,
                width: 80,
                child: Text(
                  'Days',
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      selected = 1;
                    });
                  },
                  child: DayTile(
                      color: selected == 1
                          ? const Color(0xFFF2EFFF)
                          : Colors.white,
                      weekday: "Mon",
                      textcolor:
                          selected == 1 ? appColor : const Color(0xFFA4A4A4))),
              InkWell(
                  onTap: () {
                    setState(() {
                      selected = 2;
                    });
                  },
                  child: DayTile(
                      color: selected == 2
                          ? const Color(0xFFF2EFFF)
                          : Colors.white,
                      weekday: "Tue",
                      textcolor:
                          selected == 2 ? appColor : const Color(0xFFA4A4A4))),
              InkWell(
                  onTap: () {
                    setState(() {
                      selected = 3;
                    });
                  },
                  child: DayTile(
                      color: selected == 3
                          ? const Color(0xFFF2EFFF)
                          : Colors.white,
                      weekday: "Wed",
                      textcolor:
                          selected == 3 ? appColor : const Color(0xFFA4A4A4))),
              InkWell(
                  onTap: () {
                    setState(() {
                      selected = 4;
                    });
                  },
                  child: DayTile(
                      color: selected == 4
                          ? const Color(0xFFF2EFFF)
                          : Colors.white,
                      weekday: "Thurs",
                      textcolor:
                          selected == 4 ? appColor : const Color(0xFFA4A4A4))),
              InkWell(
                  onTap: () {
                    setState(() {
                      selected = 5;
                    });
                  },
                  child: DayTile(
                      color: selected == 5
                          ? const Color(0xFFF2EFFF)
                          : Colors.white,
                      weekday: "Fri",
                      textcolor:
                          selected == 5 ? appColor : const Color(0xFFA4A4A4))),
              InkWell(
                  onTap: () {
                    setState(() {
                      selected = 6;
                    });
                  },
                  child: DayTile(
                      color: selected == 6
                          ? const Color(0xFFF2EFFF)
                          : Colors.white,
                      weekday: "Sat",
                      textcolor:
                          selected == 6 ? appColor : const Color(0xFFA4A4A4))),
              InkWell(
                  onTap: () {
                    setState(() {
                      selected = 7;
                    });
                  },
                  child: DayTile(
                      color: selected == 7
                          ? const Color(0xFFF2EFFF)
                          : Colors.white,
                      weekday: "Sun",
                      textcolor:
                          selected == 7 ? appColor : const Color(0xFFA4A4A4))),
            ],
          ),
          SizedBox(
            height: 0.03 * size.height,
          ),
          Container(
            height: size.width / 1.4,
            width: size.width,
            decoration: BoxDecoration(
                color: appColor, borderRadius: BorderRadius.circular(24)),
          ),
          SizedBox(
            height: 0.03 * size.height,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today",
                style: appTextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                  height: 30,
                  width: 0.1 * size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "All",
                        style: appTextStyle(fontSize: 12),
                      ),
                      const Icon(
                        Icons.menu_rounded,
                      )
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 0.02 * size.height,
          ),
          const HistoryTile(
            iconData: Icons.restaurant_rounded,
            text: "Food",
            type: "",
          ),
          SizedBox(
            height: 0.04 * size.height,
          ),
          const HistoryTile(
            iconData: Icons.money_rounded,
            isCredit: true,
            text: "Free Cash",
            type: "received",
          ),
          SizedBox(
            height: 0.04 * size.height,
          ),
          const HistoryTile(
            iconData: Icons.local_taxi,
            text: "Transport",
            type: "BNPL",
          ),
          SizedBox(
            height: 0.04 * size.height,
          ),
          const HistoryTile(
            iconData: Icons.liquor,
            isCredit: true,
            text: "Flexing",
            type: "payonce",
          ),
        ])));
  }
}
