import 'package:flutter/material.dart';
import 'package:simple_layout/settingPart/main/ChildWidget.dart';

import 'package:simple_layout/settingPart/main/HeadingWidget.dart';

// profile  section class

class ProfileSection extends StatefulWidget {
  const ProfileSection({super.key});

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HeadingWidget(
          headingName: "Profile",
          iconData: Icons.account_circle_rounded,
        ),
        SizedBox(height: 1),
        ChildWidget(onPressed: editProfile, placeHolder: "Edit Profile"),
        ChildWidget(
            onPressed: contactInfo, placeHolder: "Edit Driver Contact Info"),
        ChildWidget(
            onPressed: switchUser,
            placeHolder: "AJITH NADARAJAN (Switch User)"),
      ],
    );
  }

  void editProfile() {
    print("edit Profile triggered");
  }

  void contactInfo() {
    print("contact info");
  }

  void switchUser() {
    print("switch user");
  }
}
