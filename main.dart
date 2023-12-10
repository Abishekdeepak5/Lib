import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_app/AppBar/three_icon.dart';
import 'package:new_app/Auth/auth_register.dart';
import 'package:new_app/first_new.dart';
import 'package:new_app/second_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBp-M8RrNyPousVMyymddxSxpBPdYUDX4M",
            appId: "1:700496983894:web:d8e4dfad2cf7120c3cc8f7",
            messagingSenderId: "700496983894",
            projectId: "avecsage1"));
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => AppPage();
}

class AppPage extends State<MyApp> {
  int currentPageIndex = 0;
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        setState(() {
          currentPageIndex = 2;
        });
        // ignore: avoid_print
        print('User is currently signed out!');
      } else {
        setState(() {
          currentPageIndex = 0;
        });
        // ignore: avoid_print
        print('User is signed in!');
      }
    });
    // final User? user=authInstance.currentUser;
    // if(user==null){}
    super.initState();
  }

  final List<Widget> _pages = [
    const FirstNew(),
    const SecondPage(),
    const MyWidget(),
    // const ThirdPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left:
                          MediaQuery.of(context).size.width > 280 ? 16.0 : 10.0,
                    ), // Adjust the left padding as needed
                    child: const Text('AVECSAGE',style:TextStyle(color: Colors.white,)),
                  ),
                  const RoundedAppBarIconButton(),
                ],
              ),
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
          backgroundColor: const Color.fromRGBO(0, 71, 133, 1),
        ),
        body: Container(
          color: const Color.fromARGB(255, 214, 214, 230),
          child: _pages[currentPageIndex],
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  void _curIndex(index) {
    setState(() {
      currentPageIndex = index;
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
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
      selectedItemColor: const Color.fromRGBO(0, 71, 133, 1),
      unselectedItemColor: Colors.grey,
      currentIndex: currentPageIndex,
      onTap: (index) {
        FirebaseAuth.instance.authStateChanges().listen((User? user) {
          if (user == null) {
            setState(() {
              currentPageIndex = 2;
            });
          } else {
             _curIndex(index);
          }
        });
       
      },
    );
  }
}
