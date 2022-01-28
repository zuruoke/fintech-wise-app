import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/widgets/auth_componets/decorated_container.dart';
import 'package:cashwise/widgets/decorated_nav_bar.dart';
import 'package:flutter/material.dart';

class ActionBackground extends StatelessWidget {
  final Widget child;
  final String? actionText;
  final void Function()? onTap;
  const ActionBackground(
      {Key? key, required this.child, this.actionText, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding * size.width,
          vertical: 0.06 * size.height),
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [DecoratedNavBar()],
            ),
            child,
            SizedBox(
              height: 0.2 * size.height,
            ),
            InkWell(
              onTap: onTap,
              child: DecoratedContainer(
                isPassword: false,
                isTextField: false,
                title: actionText ?? "Proceed",
                takeAction: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
