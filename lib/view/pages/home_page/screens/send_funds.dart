import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/pages/home_page/screens/payment_option.dart';
import 'package:cashwise/view/pages/home_page/screens/send_to_contact.dart';
import 'package:cashwise/widgets/action_background.dart';
import 'package:cashwise/widgets/card_tile.dart';
import 'package:flutter/material.dart';

class SendFunds extends StatefulWidget {
  final String? actionText;
  const SendFunds({Key? key, this.actionText}) : super(key: key);

  @override
  _SendFundsState createState() => _SendFundsState();
}

class _SendFundsState extends State<SendFunds> {
  int _isSelected = 0;

  _body() {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 0.7 * size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Send funds",
                style: appTextStyle(
                    fontSize: 24, fontWeight: FontWeight.w500, color: appColor),
              ),
              const SizedBox(height: 20),
              Text(
                "Where do you want to send money to?",
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
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: CardTile(
                  iconData:
                      _isSelected == 0 ? Icons.circle : Icons.circle_outlined,
                  textColor: _isSelected == 0 ? appColor : Colors.black,
                  text: "Cashwise account",
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
                  text: "Contact",
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
              const SizedBox(height: 40),
              InkWell(
                child: CardTile(
                  iconData:
                      _isSelected == 2 ? Icons.circle : Icons.circle_outlined,
                  text: "Bank account",
                  textColor: _isSelected == 2 ? appColor : Colors.black,
                  selected:
                      _isSelected == 2 ? const Color(0xFFF2EFFF) : Colors.white,
                ),
                onTap: () {
                  setState(() {
                    _isSelected = 2;
                  });
                },
              ),
              const SizedBox(height: 40),
              InkWell(
                child: CardTile(
                  iconData:
                      _isSelected == 3 ? Icons.circle : Icons.circle_outlined,
                  text: "Other wallets (PiggyVest, e.t.c)",
                  textColor: _isSelected == 1 ? appColor : Colors.black,
                  selected:
                      _isSelected == 3 ? const Color(0xFFF2EFFF) : Colors.white,
                ),
                onTap: () {
                  setState(() {
                    _isSelected = 3;
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
                    MaterialPageRoute(builder: (_) => const SendToContact()));
              }
            : () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const PaymentOptions(
                              actionText: "Next",
                            )));
              },
        child: _body(),
        actionText: widget.actionText,
      ),
    );
  }
}
