import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/widgets/cancel_widget.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/liquidate_budget.dart';
import 'package:cashwise/widgets/action_background.dart';
import 'package:cashwise/widgets/auth_componets/decorated_container.dart';
import 'package:flutter/material.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 0.4 * size.height,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding * size.width,
            vertical: (0.4 * size.height) * 0.08),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Liquidate budget?",
                  style: appTextStyle(
                      fontSize: 18,
                      color: appColor,
                      fontWeight: FontWeight.w500),
                ),
                const CancelWidget(),
              ],
            ),
            SizedBox(height: (0.4 * size.height) * 0.03),
            SizedBox(
              width: 0.7 * size.width,
              child: Text(
                "You are about to liquidate your budget. We do not encourage this action, hence you will be charged N1000 as a deterrent for this action.",
                style: appTextStyle(
                    fontSize: 16,
                    lineHeight: 1.55,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFA4A4A4)),
              ),
            ),
            SizedBox(height: (0.4 * size.height) * 0.2),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LiquidateBudget(
                          height: 0.4 * size.height, width: size.width),
                    ));
              },
              child: const DecoratedContainer(
                isPassword: false,
                isTextField: false,
                title: "Proceed",
                takeAction: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
