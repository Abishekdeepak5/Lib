import 'package:flutter/material.dart';
import 'package:new_app/settingPart/main/ChildWidget.dart';

import 'package:new_app/settingPart/main/HeadingWidget.dart';

class SettingOptions extends StatefulWidget {
  const SettingOptions({super.key});

  @override
  State<SettingOptions> createState() => _SettingOptionsState();
}

class _SettingOptionsState extends State<SettingOptions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HeadingWidget(
          headingName: "Settings",
          iconData: Icons.circle_notifications,
        ),
        SizedBox(height: 1),
        ChildWidget(onPressed: notification, placeHolder: "Notification"),
        ChildWidget(onPressed: loginSetting, placeHolder: "Login Settings"),
        ChildWidget(onPressed: shortcuts, placeHolder: "Siri Shortcuts"),
        ChildWidget(onPressed: widgetSetting, placeHolder: "Widget Setting"),
        ChildWidget(onPressed: cancel, placeHolder: "Cancel My Policy"),
      ],
    );
  }

  void notification() {}
  void loginSetting() {}
  void shortcuts() {}
  void widgetSetting() {}
  void cancel() {}
}
