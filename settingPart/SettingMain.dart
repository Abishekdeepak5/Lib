import 'package:flutter/material.dart';
import 'package:new_app/settingPart/AccountInformation.dart';
import 'package:new_app/settingPart/ContactUs.dart';
import 'package:new_app/settingPart/ProfileSection.dart';
import 'package:new_app/settingPart/SettingsOptions.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 4),

          // parent column
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                // all children in the current page
                children: [
                  //
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Settings",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          // ignore: avoid_print
                          onPressed: () =>Navigator.pop(context),
                          icon: const Icon(Icons.close),
                          iconSize: 37,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // profile column
                  const ProfileSection(),
                  // setting column
                  const SettingOptions(),
                  //Account information
                  const AccountInformation(),
                  // contact Us
                  const ContactUs(),

                  // Settings
                  // SettingsOptions();
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
