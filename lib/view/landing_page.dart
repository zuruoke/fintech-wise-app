import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/auth_pages/login_page/login_page.dart';
import 'package:cashwise/widgets/auth_componets/decorated_container.dart';
import 'package:cashwise/widgets/decorated_nav_bar.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      margin: EdgeInsets.symmetric(horizontal: horizontalPadding * size.width),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 0.07 * size.height,
          ),
          const DecoratedNavBar(),
          SizedBox(
            height: 0.07 * size.height,
          ),
          Align(
            child: Text("How will you be using cashwise?",
                style: appTextStyle(
                    fontSize: 22,
                    color: appColor,
                    fontWeight: FontWeight.w500)),
          ),
          SizedBox(
            height: 0.01 * size.height,
          ),
          Align(
            child: Text("This will help us personalize your experience",
                style: appTextStyle(
                    fontSize: 16,
                    color: lightTextColor.withOpacity(.32),
                    fontWeight: FontWeight.w400)),
          ),
          SizedBox(
            height: 0.08 * size.height,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      SizedBox(height: 0.05 * size.width),
                      Text(
                        "Patron",
                        style: appTextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Regular account",
                        style: appTextStyle(fontSize: 10, color: Colors.white),
                      )
                    ]),
                    Image.asset("assets/images/developer.png")
                  ],
                ),
                height: 0.5 * size.width,
                width: 0.4 * size.width,
                decoration: BoxDecoration(
                    color: appColor, borderRadius: BorderRadius.circular(16)),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      SizedBox(height: 0.05 * size.width),
                      Text(
                        "Partner",
                        style: appTextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Merchant account",
                        style: appTextStyle(fontSize: 10),
                      )
                    ]),
                    Image.asset("assets/images/woman.png")
                  ],
                ),
                height: 0.5 * size.width,
                width: 0.4 * size.width,
                decoration: BoxDecoration(
                    color: appColor.withOpacity(.1),
                    borderRadius: BorderRadius.circular(16)),
              )
            ],
          ),
          SizedBox(
            height: 0.3 * size.height,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const LoginPage()));
            },
            child: const DecoratedContainer(
              isPassword: false,
              isTextField: false,
              title: "Continue",
              takeAction: true,
            ),
          )
        ]),
      ),
    ));
  }
}
