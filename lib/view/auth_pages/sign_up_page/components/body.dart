import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/auth_pages/insert_number.dart';
import 'package:cashwise/widgets/auth_componets/custom_text_field.dart';
import 'package:cashwise/widgets/auth_componets/decorated_container.dart';
import 'package:cashwise/widgets/auth_componets/decorated_or.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  _checkBoxT$A() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Material(
          child: Checkbox(
            value: true,
            activeColor: appColor,
            checkColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            onChanged: (bool? value) {},
          ),
        ),
        Expanded(
            child: Text(
          'I have agreed to the terms of use and privacy policy',
          overflow: TextOverflow.ellipsis,
          style: appTextStyle(fontSize: 14),
        ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontalPadding * size.width),
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.07 * size.height,
            ),
            Text(
              "We are excited ",
              style: appTextStyle(
                  fontSize: 24, fontWeight: FontWeight.w500, color: appColor),
            ),
            Text(
              "to get you started!",
              style: appTextStyle(
                  fontSize: 24, fontWeight: FontWeight.w500, color: appColor),
            ),
            SizedBox(
              height: 0.05 * size.height,
            ),
            const DecoratedContainer(
              title: "Sign up with Google",
              isTextField: false,
              isPassword: false,
            ),
            SizedBox(
              height: 0.025 * size.height,
            ),
            const DecoratedOR(),
            SizedBox(
              height: 0.025 * size.height,
            ),
            const CustomTextField(text: "Full Name", hintText: "Lynda Uvwajk"),
            SizedBox(
              height: 0.025 * size.height,
            ),
            const CustomTextField(text: "Email", hintText: "lynda@gmail.com"),
            SizedBox(
              height: 0.025 * size.height,
            ),
            const CustomTextField(text: "Username", hintText: "@lynda"),
            SizedBox(
              height: 0.025 * size.height,
            ),
            const CustomTextField(text: "Referal Code", hintText: "1232"),
            SizedBox(
              height: 0.025 * size.height,
            ),
            const CustomTextField(text: "Email", hintText: "lynda@gmail.com"),
            SizedBox(
              height: 0.025 * size.height,
            ),
            const CustomTextField(
              text: "Password",
              hintText: "********",
              isPassword: true,
            ),
            SizedBox(
              height: 0.025 * size.height,
            ),
            _checkBoxT$A(),
            SizedBox(
              height: 0.03 * size.height,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const InsertNumber()));
              },
              child: const DecoratedContainer(
                isPassword: false,
                isTextField: false,
                title: "Create Account",
                takeAction: true,
              ),
            ),
            SizedBox(
              height: 0.03 * size.height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: appTextStyle(fontSize: 16),
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      "Log in here now",
                      style: appTextStyle(fontSize: 16, color: appColor),
                    )),
              ],
            ),
            SizedBox(
              height: 0.03 * size.height,
            ),
          ],
        ),
      ),
    );
  }
}
