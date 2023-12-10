
import 'package:flutter/material.dart';
import 'package:new_app/settingPart/SettingMain.dart';

class RoundedAppBarIconButton extends StatelessWidget {
  const RoundedAppBarIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Row(
    children:<Widget>[
    Container(
      margin:  EdgeInsets.only(
        right: MediaQuery.of(context).size.width > 280?16:8
        ), // Adjust the margin as needed
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 24, 47, 66), // Change the background color here
      ),
      child: IconButton(
        icon: const Icon(
          Icons.mail,
          color: Colors.white, // Change the icon color here
        ),
        tooltip: 'Mail Icon',
        onPressed: () {
          },
      ),
    ),

    Container(
      margin: EdgeInsets.only( 
        right: MediaQuery.of(context).size.width > 280?16:8), // Adjust the margin as needed
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 24, 47, 66), // Change the background color here
      ),
      child: 
      IconButton(
              icon: const Icon(Icons.message,color: Colors.white,),
              tooltip: 'Message Icon',
              onPressed: () {
              },
            ),
    ),

    Container(
      margin: EdgeInsets.only(
         right: MediaQuery.of(context).size.width > 280?16:8
      ), // Adjust the margin as needed
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 24, 47, 66), // Change the background color here
      ),
      child: 
      IconButton(
              icon: const Icon(Icons.settings,color: Colors.white,),
              tooltip: 'Sitting Icon',
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Settings(),
                  ),
                );
                // const Settings();
              },
            ),
    ),
    ]
    );
  }
}



