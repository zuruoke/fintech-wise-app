import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/tab_screen.dart';
import 'package:cashwise/widgets/auth_componets/decorated_container.dart';
import 'package:cashwise/widgets/auth_componets/small_rounded_text_field.dart';
import 'package:cashwise/widgets/decorated_nav_bar.dart';
import 'package:flutter/material.dart';

class VerifyNumber extends StatelessWidget {
  const VerifyNumber({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            margin: EdgeInsets.symmetric(
                horizontal: horizontalPadding * size.width),
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.07 * size.height,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const DecoratedNavBar()),
                SizedBox(
                  height: 0.07 * size.height,
                ),
                Align(
                  child: Text(
                    "Verify your phone number",
                    style:
                        appTextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 0.01 * size.height,
                ),
                Align(
                  child: Text(
                    "A code has been sent to +2348144590111.",
                    style: appTextStyle(fontSize: 16, color: hintColor),
                  ),
                ),
                SizedBox(
                  height: 0.08 * size.height,
                ),
                Text(
                  "6-didgit code",
                  style: appTextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 0.02 * size.height,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SmallRoundedTextField(hintText: "1"),
                    SizedBox(
                      width: 0.05 * size.width,
                    ),
                    const SmallRoundedTextField(hintText: "8"),
                    SizedBox(
                      width: 0.05 * size.width,
                    ),
                    const SmallRoundedTextField(hintText: "8"),
                    SizedBox(
                      width: 0.05 * size.width,
                    ),
                    const SmallRoundedTextField(hintText: "9"),
                    SizedBox(
                      width: 0.05 * size.width,
                    ),
                    const SmallRoundedTextField(hintText: "2"),
                    SizedBox(
                      width: 0.05 * size.width,
                    ),
                    const SmallRoundedTextField(hintText: "7")
                  ],
                ),
                SizedBox(
                  height: 0.38 * size.height,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const TabScreen()));
                  },
                  child: const DecoratedContainer(
                    isPassword: false,
                    isTextField: false,
                    title: "Verify",
                    takeAction: true,
                  ),
                ),
                SizedBox(
                  height: 0.04 * size.height,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't get the code? ",
                      style: appTextStyle(fontSize: 16),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "Cick to re-send",
                          style: appTextStyle(fontSize: 16, color: appColor),
                        )),
                  ],
                ),
              ],
            ))));
  }
}
