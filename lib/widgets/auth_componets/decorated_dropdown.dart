import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:flutter/material.dart';

class DecoratedDropdown extends StatefulWidget {
  final List<String> items;
  final String defaultItem;
  final String text;
  const DecoratedDropdown(
      {Key? key,
      required this.items,
      required this.defaultItem,
      required this.text})
      : super(key: key);

  @override
  State<DecoratedDropdown> createState() => _DecoratedDropdownState();
}

class _DecoratedDropdownState extends State<DecoratedDropdown> {
  String dropdownvalue = 'Food';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 100,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: appTextStyle(
                fontSize: 16,
                color: const Color(0xFF0B0B0B),
                fontWeight: FontWeight.w400),
          ),
          Container(
            width: size.width,
            height: 56,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: appColor),
              borderRadius: BorderRadius.circular(16),
            ),
            child: DropdownButton(
              value: dropdownvalue,
              underline: const SizedBox(),
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 0.50 * size.width,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: appColor,
                    size: 20,
                  )
                ],
              ),
              items: widget.items.map((String items) {
                return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: appTextStyle(
                          fontSize: 16,
                          color: appColor,
                          fontWeight: FontWeight.w400),
                    ));
              }).toList(),
              onChanged: (item) {
                setState(() {
                  dropdownvalue = item.toString();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
