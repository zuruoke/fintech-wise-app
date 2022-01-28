import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/fund_by_card.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/fund_with_transfer.dart';
import 'package:cashwise/widgets/card_tile.dart';
import 'package:cashwise/widgets/action_background.dart';
import 'package:flutter/material.dart';

class FundCashWise extends StatefulWidget {
  final String? actionText;
  const FundCashWise({Key? key, this.actionText}) : super(key: key);

  @override
  State<FundCashWise> createState() => _FundCashWiseState();
}

class _FundCashWiseState extends State<FundCashWise> {
  int _isSelected = 0;

  _body() {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 0.4 * size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Fund cashwise",
                style: appTextStyle(
                    fontSize: 24, fontWeight: FontWeight.w500, color: appColor),
              ),
              const SizedBox(height: 20),
              Text(
                "How do you want to fund your account?",
                style: appTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF0B0B0B)),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: CardTile(
                  iconData:
                      _isSelected == 0 ? Icons.circle : Icons.circle_outlined,
                  textColor: _isSelected == 0 ? appColor : Colors.black,
                  text: "Bank transfer",
                  selected:
                      _isSelected == 0 ? const Color(0xFFF2EFFF) : Colors.white,
                ),
                onTap: () {
                  setState(() {
                    _isSelected = 0;
                  });
                },
              ),
              const SizedBox(height: 40),
              InkWell(
                child: CardTile(
                  iconData:
                      _isSelected == 1 ? Icons.circle : Icons.circle_outlined,
                  text: "Debit card",
                  textColor: _isSelected == 1 ? appColor : Colors.black,
                  selected:
                      _isSelected == 1 ? const Color(0xFFF2EFFF) : Colors.white,
                ),
                onTap: () {
                  setState(() {
                    _isSelected = 1;
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ActionBackground(
        onTap: _isSelected == 1
            ? () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const FundByCard()));
              }
            : () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const FundWithTransfer()));
              },
        child: _body(),
        actionText: widget.actionText,
      ),
    );
  }
}
