import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:flutter/material.dart';

class DecoratedContainer extends StatelessWidget {
  const DecoratedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 0.08 * size.width, vertical: 0.08 * (size.width / 1.65)),
      height: size.width / 1.65,
      width: size.width,
      decoration: BoxDecoration(
          color: appColor, borderRadius: BorderRadius.circular(24)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Spent today',
                    style: appTextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 24,
                    width: 91,
                    child: Text(
                      'Set Daily Limit',
                      style: appTextStyle(fontSize: 12, color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.08),
                        borderRadius: BorderRadius.circular(16)),
                  )
                ],
              ),
              Text(
                "\$59,067.98",
                style: appTextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Row(
                children: [
                  const Icon(Icons.arrow_drop_up,
                      size: 20, color: Color(0xFF10E48B)),
                  Text(
                    "4% up from yesterday",
                    style: appTextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    child: const Icon(
                      Icons.navigation,
                      color: Colors.white,
                      size: 20,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.4),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(height: 0.04 * (size.width / 1.65)),
                  Text(
                    "Send",
                    style: appTextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    child: const Icon(
                      Icons.qr_code_scanner,
                      color: Colors.white,
                      size: 20,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.4),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(height: 0.04 * (size.width / 1.65)),
                  Text(
                    "Scan",
                    style: appTextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    child: const Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.4),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(height: 0.04 * (size.width / 1.65)),
                  Text(
                    "Pay",
                    style: appTextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
