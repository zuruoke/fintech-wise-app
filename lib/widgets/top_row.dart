import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/add_friends.dart';
import 'package:flutter/material.dart';

class TopRowWidget extends StatelessWidget {
  const TopRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const InkWell(
            child: Icon(
          Icons.menu,
          size: 30,
          color: appColor,
        )),
        InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const AddFriend(
                            text: "Invite contact to cashwise",
                          )));
            },
            child: const Icon(
              Icons.person_add_rounded,
              size: 30,
              color: appColor,
            )),
      ],
    );
  }
}
