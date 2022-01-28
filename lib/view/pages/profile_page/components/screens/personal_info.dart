import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/widgets/auth_componets/custom_text_field.dart';
import 'package:cashwise/widgets/auth_componets/decorated_container.dart';
import 'package:cashwise/widgets/decorated_nav_bar.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: horizontalPadding * size.width,
            vertical: 0.06 * size.height),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [DecoratedNavBar()],
              ),
              SizedBox(
                height: 0.04 * size.height,
              ),
              Text(
                "Personal information",
                style: appTextStyle(
                    fontSize: 24, fontWeight: FontWeight.w500, color: appColor),
              ),
              SizedBox(
                height: 0.025 * size.height,
              ),
              const CustomTextField(
                  text: "Full name", hintText: "Lynda Uvwajk"),
              SizedBox(
                height: 0.025 * size.height,
              ),
              const CustomTextField(
                  text: "Email address", hintText: "lynda@gmail.com"),
              SizedBox(
                height: 0.025 * size.height,
              ),
              const CustomTextField(
                text: "Password",
                hintText: "*********",
                isPassword: true,
              ),
              SizedBox(
                height: 0.025 * size.height,
              ),
              const CustomTextField(
                text: "Confirm password",
                hintText: "*********",
                isPassword: true,
              ),
              SizedBox(
                height: 0.06 * size.height,
              ),
              SizedBox(
                height: 0.025 * size.height,
              ),
              InkWell(
                onTap: () {},
                child: const DecoratedContainer(
                  isPassword: false,
                  isTextField: false,
                  title: "Edit",
                  takeAction: true,
                ),
              ),
              SizedBox(
                height: 0.03 * size.height,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
