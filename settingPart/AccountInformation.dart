import 'package:flutter/material.dart';
import 'package:new_app/settingPart/main/ChildWidget.dart';
import 'package:new_app/settingPart/main/HeadingWidget.dart';

class AccountInformation extends StatefulWidget {
  const AccountInformation({super.key});

  @override
  State<AccountInformation> createState() => _AccountInformationState();
}

class _AccountInformationState extends State<AccountInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const HeadingWidget(
          headingName: "Settings",
          iconData: Icons.circle_notifications,
        ),
        const SizedBox(height: 1),
        ChildWidget(onPressed: delete, placeHolder: "Delete App Account Info"),
      ],
    );
  }

  //
  void delete() {}
}
