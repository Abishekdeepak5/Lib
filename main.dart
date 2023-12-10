import 'package:flutter/material.dart';
import 'package:simple_layout/first_new.dart';
import 'package:simple_layout/second_page.dart';
import 'package:simple_layout/settingPart/SettingMain.dart';
import 'package:simple_layout/third_page.dart';

void main() { 
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => AppPage();
}



class AppPage extends State<MyApp> {

  final List<Widget> _pages = [
      const FirstNew(),
    const SecondPage(),
    const ThirdPage(),
  ];
 int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          
          title:
          // const 
          // Container(
          // color:Colors.grey,
          // child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: EdgeInsets.only(
                 left: MediaQuery.of(context).size.width > 280?16.0:10.0,
                ), // Adjust the left padding as needed
                child: const Text('AVECSAGE'),
          ),
          const RoundedAppBarIconButton(),
              ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //   Text("Good morninig!",
              //   style: TextStyle(fontSize: 24.0)),
              // ],),
  ],
  ),
          titleSpacing: 00.0,
          toolbarHeight: 90.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
          ),
          elevation: 0.00,
          // backgroundColor: const Color.fromARGB(255, 60, 43, 211)
        backgroundColor: const  Color.fromRGBO(0, 71, 133, 1),
         
        ),
        
         body:
         Container(
          color: const Color.fromARGB(255, 214, 214, 230),
          child:
          _pages[currentPageIndex]
          ,),

         bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }


void _curIndex(index) {
    setState(() {
      currentPageIndex=index;
    });
}

Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      selectedItemColor:const Color.fromRGBO(0, 71, 133, 1),
      unselectedItemColor: Colors.grey,
      currentIndex: currentPageIndex,
      onTap: (index) {
          _curIndex(index);
        },
    );
  }

}




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
              icon: const Icon(Icons.message),
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
              icon: const Icon(Icons.settings),
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





