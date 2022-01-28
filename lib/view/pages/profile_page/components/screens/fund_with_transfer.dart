import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/transaction_successful.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/widgets/leading_tile.dart';
import 'package:cashwise/widgets/action_background.dart';
import 'package:flutter/material.dart';

class FundWithTransfer extends StatelessWidget {
  const FundWithTransfer({Key? key}) : super(key: key);

  _body(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 0.45 * size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fund cashwise with transfer",
            style: appTextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: appColor),
          ),
          Container(
            padding:
                EdgeInsets.symmetric(vertical: 0.05 * (0.45 * size.height)),
            height: 0.35 * (0.45 * size.height),
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: appColor.withOpacity(.12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Account details",
                  style: appTextStyle(
                      fontSize: 12,
                      color: appColor,
                      fontWeight: FontWeight.w400),
                ),
                Text("1932 575 895",
                    style: appTextStyle(
                        fontSize: 18,
                        color: appColor,
                        fontWeight: FontWeight.w600)),
                Text("Lyndall Urwick",
                    style: appTextStyle(
                        fontSize: 14,
                        color: appColor,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LeadingTile(
                height: 0.17 * (0.45 * size.height),
                icon: Icons.copy,
                title: "Copy",
                width: 0.4 * size.width,
                color: const Color(0xFF0082E4),
              ),
              LeadingTile(
                height: 0.17 * (0.45 * size.height),
                icon: Icons.share,
                title: "Share",
                width: 0.4 * size.width,
                color: const Color(0xFF1CE08E),
              )
            ],
          ),
          Text(
            "*Transfer to your cashwise account from your local bank",
            style: appTextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFFFF0000)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ActionBackground(
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
          actionText: "Done",
          child: _body(context)),
    );
  }
}
