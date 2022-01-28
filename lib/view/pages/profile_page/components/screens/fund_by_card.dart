import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/auth_pages/insert_number.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/transaction_successful.dart';
import 'package:cashwise/widgets/auth_componets/custom_text_field.dart';
import 'package:cashwise/widgets/auth_componets/decorated_container.dart';
import 'package:cashwise/widgets/auth_componets/decorated_or.dart';
import 'package:cashwise/widgets/decorated_nav_bar.dart';
import 'package:flutter/material.dart';

class FundByCard extends StatefulWidget {
  const FundByCard({Key? key}) : super(key: key);

  @override
  _FundByCardState createState() => _FundByCardState();
}

class _FundByCardState extends State<FundByCard> {
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
                "Fund cashwise with card",
                style: appTextStyle(
                    fontSize: 24, fontWeight: FontWeight.w500, color: appColor),
              ),
              SizedBox(
                height: 0.025 * size.height,
              ),
              const CustomTextField(
                  text: "Card name", hintText: "Lynda Uvwajk"),
              SizedBox(
                height: 0.025 * size.height,
              ),
              const CustomTextField(text: "Card number", hintText: "3912144"),
              SizedBox(
                height: 0.025 * size.height,
              ),
              const CustomTextField(text: "Expires", hintText: "06/23"),
              SizedBox(
                height: 0.025 * size.height,
              ),
              const CustomTextField(text: "CVV", hintText: "1232"),
              SizedBox(
                height: 0.025 * size.height,
              ),
              const CustomTextField(text: "Amount to fund", hintText: "3000"),
              SizedBox(
                height: 0.025 * size.height,
              ),
              const CustomTextField(
                text: "Payment frequency",
                hintText: "Daily",
              ),
              SizedBox(
                height: 0.025 * size.height,
              ),
              SizedBox(
                height: 0.03 * size.height,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const TransactionSuccessful(
                        title: "Transaction successful",
                        content:
                            "You have transferred N30,000 to your cashwise wallet",
                      ),
                    ),
                  );
                },
                child: const DecoratedContainer(
                  isPassword: false,
                  isTextField: false,
                  title: "Fund cashwise",
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
