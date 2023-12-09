import 'package:flutter/material.dart';

class FirstNew extends StatelessWidget {
  const FirstNew({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // color:Colors.red,

      children: <Widget>[
        const Padding(
            padding: EdgeInsets.all(8.0), // Adds padding to each child
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Viewing:",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      " Auto (5149)",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

// TextButton(
//   onPressed: null,
//   child: Text('TextButton'),
// ),

                TextButton(
                  onPressed: null,
                  child: SizedBox(
                    height: 35.0,
                    // child: Text(
                    //   'Flat Button',
                    //   style: TextStyle(
                    //       color: Color.fromARGB(255, 49, 7, 238),
                    //       fontSize: 13.0,
                    //       fontWeight: FontWeight.bold),
                    // ),
                    child: Card(
                      color: Color.fromARGB(255, 214, 210, 210),
                      child: Center(
                        child: Text(
                          ' View All Policies ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 60, 43, 211)),
                        ), //Text
                      ), //Center
                    ),
                  ),
                ),
              ],
            )),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0), // Adds padding to each child
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0), // Adds padding to each child
                    child: SizedBox(
                      height: 120,
                      child: Card(
                        elevation: 12,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0,
                              top: 5.0), // Adds padding to each child
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // mainAxisAlignment:MainAxisAlignment.start,
                              Container(
                                width: 40.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                      255, 60, 43, 211), // Color of the square
                                  borderRadius: BorderRadius.circular(
                                      40.0), // Border radius for circular shape
                                ),
                                child: Center(
                                    child: Container(
                                  width: 30.0,
                                  height: 15.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.white, // Color of the square
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "AVECS",
                                      style: TextStyle(
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                )),
                              ),
                              const Text(
                                'View ID \nCards',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0), // Adds padding to each child
                    child: SizedBox(
                      height: 120,
                      child: Card(
                        elevation: 10,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0,
                              top: 5.0), // Adds padding to each child
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // mainAxisAlignment:MainAxisAlignment.start,
                              Container(
                                width: 40.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.orange, // Color of the square
                                  borderRadius: BorderRadius.circular(
                                      50.0), // Border radius for circular shape
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.directions_car,
                                    color: Colors.white,
                                    size:
                                        20.0, // Set the size of the icon as needed
                                  ),
                                ),
                              ),
                              const Text(
                                'Request \nRoadside\nHelp',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0), // Adds padding to each child
                    child: SizedBox(
                      height: 120,
                      child: Card(
                        elevation: 10,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0,
                              top: 5.0), // Adds padding to each child
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // mainAxisAlignment:MainAxisAlignment.start,
                              Container(
                                width: 40.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.green, // Color of the square
                                  borderRadius: BorderRadius.circular(
                                      50.0), // Border radius for circular shape
                                ),
                                child: Center(
                                    child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(5.0)),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.attach_money,
                                      color: Colors.green,
                                      size:
                                          20.0, // Set the size of the icon as needed
                                    ),
                                  ),
                                )),
                              ),
                              const Text(
                                'View \nUpcoming\nWithdrawal',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        //

        Container(
          color: Colors.white,
          child: const Padding(
            padding: EdgeInsets.only(
                top: 10.0, left: 10.0), // Adds padding to each child
            child: Text("  Here's What's Next",
                style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold)),
          ),
        ),

        Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 80.0,
                width: double.infinity,
                child: const Card(
                  margin: EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
                  elevation: 5.0,
                  color: Color.fromARGB(255, 213, 222, 231),
                  child: Text("Abis"),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 80.0,
                width: double.infinity,
                child: const Card(
                  margin: EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
                  elevation: 5.0,
                  color: Color.fromARGB(255, 213, 222, 231),
                  child: Text("Abis"),
                ),
              ),
              Container(
                height: 80.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Card(
                  margin: EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
                  elevation: 5.0,
                  color: Color.fromARGB(255, 213, 222, 231),
                  child: Text("Abis"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
