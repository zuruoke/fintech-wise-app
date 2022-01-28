import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/transaction_successful.dart';
import 'package:cashwise/view/tab_screen.dart';
import 'package:cashwise/widgets/auth_componets/custom_text_field.dart';
import 'package:cashwise/widgets/auth_componets/decorated_container.dart';
import 'package:cashwise/widgets/auth_componets/small_rounded_text_field.dart';
import 'package:cashwise/widgets/decorated_nav_bar.dart';
import 'package:flutter/material.dart';

class LinkBVN extends StatefulWidget {
  const LinkBVN({Key? key}) : super(key: key);

  @override
  _LinkBVNState createState() => _LinkBVNState();
}

class _LinkBVNState extends State<LinkBVN> {
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
                const DecoratedNavBar(),
                SizedBox(
                  height: 0.04 * size.height,
                ),
                Text(
                  "Link BVN",
                  style: appTextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: appColor),
                ),
                SizedBox(
                  height: 0.04 * size.height,
                ),
                const CustomTextField(text: "BVN", hintText: "223455677890"),
                SizedBox(
                  height: 0.04 * size.height,
                ),
                Text(
                  "Insert one-time OTP just received",
                  style:
                      appTextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 0.025 * size.height,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const TransactionSuccessful(
                                  title: "BVN Linked!",
                                  content:
                                      "You have withdrawn N20,000 to cashwise. Lorem Ipsum, this can be better, honestly",
                                )));
                  },
                  child: const DecoratedContainer(
                    isPassword: false,
                    isTextField: false,
                    title: "Link BVN",
                    takeAction: true,
                  ),
                ),
                SizedBox(
                  height: 0.04 * size.height,
                ),
              ],
            ))));
  }
}
