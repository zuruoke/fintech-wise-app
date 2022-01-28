import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/pages/home_page/components/budget_streams.dart';
import 'package:cashwise/view/pages/home_page/components/decorated_container.dart';
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
      margin: EdgeInsets.symmetric(horizontal: horizontalPadding * size.width),
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
          const TopRowWidget(),
          SizedBox(
            height: 0.06 * size.height,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hi, Lyndall",
                style: appTextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Container(
                alignment: Alignment.center,
                height: 25,
                width: 60,
                child: Text(
                  'Day 21',
                  style: appTextStyle(fontSize: 14, color: hintColor),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: hintColor),
                    borderRadius: BorderRadius.circular(16)),
              )
            ],
          ),
          SizedBox(
            height: 0.03 * size.height,
          ),
          const DecoratedContainer(),
          SizedBox(
            height: 0.04 * size.height,
          ),
          Text(
            "Budget Streams",
            style: appTextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 0.04 * size.height,
          ),
          const BudgetStreams(
            text: "Food",
            position: 0.3,
            iconData: Icons.restaurant_menu_rounded,
          ),
          SizedBox(
            height: 0.04 * size.height,
          ),
          const BudgetStreams(
            text: "Transport",
            position: 0.5,
            iconData: Icons.local_taxi,
          ),
          SizedBox(
            height: 0.04 * size.height,
          ),
          const BudgetStreams(
              text: "Flexing", position: 0.38, iconData: Icons.liquor),
          SizedBox(
            height: 0.04 * size.height,
          ),
          const BudgetStreams(
              text: "Free Cash", position: 0.0, iconData: Icons.money_rounded)
        ],
      )),
    );
  }
}
