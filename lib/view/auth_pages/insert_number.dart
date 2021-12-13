import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/auth_pages/verify_number.dart';
import 'package:cashwise/widgets/auth_componets/custom_text_field.dart';
import 'package:cashwise/widgets/auth_componets/decorated_container.dart';
import 'package:cashwise/widgets/decorated_nav_bar.dart';
import 'package:flutter/material.dart';

class InsertNumber extends StatelessWidget {
  const InsertNumber({Key? key}) : super(key: key);

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
                    "Insert a phone number",
                    style:
                        appTextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 0.01 * size.height,
                ),
                Align(
                  child: Text(
                    "We will send you a confrimation code.",
                    style: appTextStyle(fontSize: 16, color: hintColor),
                  ),
                ),
                SizedBox(
                  height: 0.08 * size.height,
                ),
                const CustomTextField(
                    text: "Phone number", hintText: "+234 813 4590 111"),
                SizedBox(
                  height: 0.4 * size.height,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const VerifyNumber()));
                  },
                  child: const DecoratedContainer(
                    isPassword: false,
                    isTextField: false,
                    title: "Get Code",
                    takeAction: true,
                  ),
                ),
              ],
            ))));
  }
}
