import 'package:flutter/material.dart';
import 'package:new_app/settingPart/main/ChildWidget.dart';

import 'package:new_app/settingPart/main/HeadingWidget.dart';

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
        const HeadingWidget(
          headingName: "Profile",
          iconData: Icons.account_circle_rounded,
        ),
        const SizedBox(height: 1),
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
    // ignore: avoid_print
    print("edit Profile triggered");
  }

  void contactInfo() {
    // ignore: avoid_print
    print("contact info");
  }

  void switchUser() {
    // ignore: avoid_print
    print("switch user");
  }
}
