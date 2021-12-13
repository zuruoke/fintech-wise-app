import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/auth_pages/sign_up_page/sign_up_page.dart';
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
              "Welcome",
              style: appTextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Text(
              "Back!",
              style: appTextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 0.05 * size.height,
            ),
            const DecoratedContainer(
              title: "Log in with Google",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have you forgotten your ",
                  style: appTextStyle(fontSize: 16),
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      "Cashwise password",
                      style: appTextStyle(fontSize: 16, color: appColor),
                    )),
              ],
            ),
            SizedBox(
              height: 0.15 * size.height,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SignUpPage()));
              },
              child: const DecoratedContainer(
                isPassword: false,
                isTextField: false,
                title: "Sign In",
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
                  "Don't have an account? ",
                  style: appTextStyle(fontSize: 16),
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      "Create an account",
                      style: appTextStyle(fontSize: 16, color: appColor),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
