import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/add_friends.dart';
import 'package:cashwise/widgets/auth_componets/custom_text_field.dart';
import 'package:cashwise/widgets/auth_componets/decorated_container.dart';
import 'package:cashwise/widgets/auth_componets/decorated_dropdown.dart';
import 'package:cashwise/widgets/decorated_nav_bar.dart';
import 'package:flutter/material.dart';

class SplitBills extends StatefulWidget {
  const SplitBills({Key? key}) : super(key: key);

  @override
  _SplitBillsState createState() => _SplitBillsState();
}

class _SplitBillsState extends State<SplitBills> {
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
                height: 0.05 * size.height,
              ),
              Text(
                "Split bill",
                style: appTextStyle(
                    fontSize: 24, fontWeight: FontWeight.w500, color: appColor),
              ),
              SizedBox(
                height: 0.028 * size.height,
              ),
              const DecoratedDropdown(
                text: "Choose a budget stream",
                items: [
                  'Food',
                  'Flexing',
                  'Chilling',
                  'Transport',
                  'Miscellaneous',
                ],
                defaultItem: "Food",
              ),
              SizedBox(
                height: 0.035 * size.height,
              ),
              const CustomTextField(
                  text: "Payment Frequency", hintText: "Daily"),
              SizedBox(
                height: 0.028 * size.height,
              ),
              const CustomTextField(text: "Amount", hintText: "N50,000"),
              SizedBox(
                height: 0.028 * size.height,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Contact",
                    style: appTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                const AddFriend(text: "Select Friend")),
                      );
                    },
                    child: Row(children: [
                      Text(
                        "Split bill with..",
                        style: appTextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: appColor),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.add,
                        size: 14,
                        color: appColor,
                      )
                    ]),
                  )
                ],
              ),
              SizedBox(
                height: 0.2 * size.height,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const AddFriend(text: "Add Friend")),
                  );
                },
                child: const DecoratedContainer(
                  isPassword: false,
                  isTextField: false,
                  title: "Proceed",
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
