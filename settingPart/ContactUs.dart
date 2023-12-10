import 'package:flutter/material.dart';
import 'package:simple_layout/settingPart/main/ChildWidget.dart';

import 'package:simple_layout/settingPart/main/HeadingWidget.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const HeadingWidget(
          headingName: "Contact Us",
          iconData: Icons.account_circle_rounded,
        ),
        const SizedBox(height: 1),
        ChildWidget(onPressed: help, placeHolder: "Help Center"),
        ChildWidget(onPressed: issue, placeHolder: "Report a Technical Issue"),
        ChildWidget(onPressed: legal, placeHolder: "Legal"),
      ],
    );
  }

  void help() {}
  void issue() {}
  legal() {}
}
