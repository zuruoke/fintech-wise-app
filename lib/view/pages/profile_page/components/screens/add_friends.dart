import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/utils/styles.dart';
import 'package:cashwise/view/pages/profile_page/components/profile_tile.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/transaction_successful.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/widgets/checked_circle_container.dart';
import 'package:cashwise/view/pages/profile_page/components/screens/widgets/custom_search_bar.dart';
import 'package:cashwise/widgets/auth_componets/decorated_container.dart';
import 'package:cashwise/widgets/decorated_nav_bar.dart';
import 'package:flutter/material.dart';

class AddFriend extends StatefulWidget {
  final String text;
  const AddFriend({Key? key, required this.text}) : super(key: key);

  @override
  State<AddFriend> createState() => _AddFriendState();
}

class _AddFriendState extends State<AddFriend> {
  List<bool> state = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin:
            EdgeInsets.symmetric(horizontal: horizontalPadding * size.width),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.06 * size.height,
              ),
              const DecoratedNavBar(),
              SizedBox(
                height: 0.05 * size.height,
              ),
              Text(
                widget.text,
                style: appTextStyle(
                    fontSize: 24, fontWeight: FontWeight.w500, color: appColor),
              ),
              SizedBox(
                height: 0.035 * size.height,
              ),
              const CustomSearchBar(
                  text: "Search friend", iconData: Icons.search),
              SizedBox(
                height: 0.041 * size.height,
              ),
              Row(
                children: [
                  const CheckedCircleContainer(),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "${state.where((bool item) => item == true).length} Selected",
                    style: appTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF0B0B0B)),
                  )
                ],
              ),
              SizedBox(
                height: 0.06 * size.height,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    state[0] = !state[0];
                  });
                },
                child: ProfileTile(
                    isAddFriend: true,
                    trailing: CheckedCircleContainer(
                      haveBorder: state[0] ? false : true,
                      color: state[0] ? appColor : null,
                    ),
                    iconData: Icons.ac_unit,
                    subTitle: "@klausigner",
                    title: "Klaus Lurkmann"),
              ),
              SizedBox(
                height: 0.04 * size.height,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    state[1] = !state[1];
                  });
                },
                child: ProfileTile(
                    isAddFriend: true,
                    trailing: CheckedCircleContainer(
                      haveBorder: state[1] ? false : true,
                      color: state[1] ? appColor : null,
                    ),
                    iconData: Icons.ac_unit,
                    subTitle: "@klausigner",
                    title: "Klaus Lurkmann"),
              ),
              SizedBox(
                height: 0.04 * size.height,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    state[2] = !state[2];
                  });
                },
                child: ProfileTile(
                    isAddFriend: true,
                    trailing: CheckedCircleContainer(
                      haveBorder: state[2] ? false : true,
                      color: state[2] ? appColor : null,
                    ),
                    iconData: Icons.ac_unit,
                    subTitle: "@klausigner",
                    title: "Klaus Lurkmann"),
              ),
              SizedBox(
                height: 0.04 * size.height,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    state[3] = !state[3];
                  });
                },
                child: ProfileTile(
                    isAddFriend: true,
                    trailing: CheckedCircleContainer(
                      haveBorder: state[3] ? false : true,
                      color: state[3] ? appColor : null,
                    ),
                    iconData: Icons.ac_unit,
                    subTitle: "@klausigner",
                    title: "Klaus Lurkmann"),
              ),
              SizedBox(
                height: 0.1 * size.height,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => TransactionSuccessful(
                                title: "Invites sent!",
                                content:
                                    "You have invited ${state.where((bool item) => item == true).length} of your contacts to cashwise. Lorem Ipsum, this can be better, honestly",
                              )));
                },
                child: const DecoratedContainer(
                  isPassword: false,
                  isTextField: false,
                  title: "Done",
                  takeAction: true,
                ),
              ),
              SizedBox(
                height: 0.04 * size.height,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
