import 'package:flutter/material.dart';

class FirstNew extends StatelessWidget {
  const FirstNew({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // color:Colors.red,

      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.width > 410 ? 10.0 : 0,
            ), // Adds padding to each child
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Viewing:",
                      style: TextStyle(
                       fontSize: 
                         MediaQuery.of(context).size.width > 280?14:10,
                          ),
                    ),
                    Text(
                      " Auto (5149)",
                      style: TextStyle(
                        fontSize: 
                         MediaQuery.of(context).size.width > 280?15:12,
      
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

// TextButton(
//   onPressed: null,
//   child: Text('TextButton'),
// ),

                const TextButton(
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
                              color: Color.fromRGBO(0, 71, 133, 1)),
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
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 10.0), // Adds padding to each child
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width > 410 ? 10.0 : 0,
                    ), // Adds padding to each child
                    child: Card(
                      // height: 140,
                      child: Card(
                        elevation: 12,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width > 410
                                ? 10.0
                                : 2.0,
                            ), // Adds padding to each child
                          child: SizedBox(
                            height: 140.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                // mainAxisAlignment:MainAxisAlignment.start,
                                Container(
                                  width: 40.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(0, 71, 133, 1), // Color of the square
                                    borderRadius: BorderRadius.circular(
                                        40.0), // Border radius for circular shape
                                  ),
                                  child: Center(
                                      child: Container(
                                    width: 30.0,
                                    height: 15.0,
                                    decoration: const BoxDecoration(
                                      color:
                                          Colors.white, // Color of the square
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
                                Text(
                                  'View ID \nCards',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: MediaQuery.of(context).size.width > 410?18:14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width > 410 ? 10.0 : 0,
                      right: MediaQuery.of(context).size.width > 410 ? 10.0 : 0,
                    ), // Adds padding to each child
                    child: Card(
                      // height: 140,
                      child: Card(
                        elevation: 10,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width > 410
                                ? 10.0
                                : 2.0,
                          ), // Adds padding to each child
                          child: Container(
                            constraints: const BoxConstraints(
                              minHeight:
                                  140.0, // Set the maximum height (optional)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                               Text(
                                  'Request \nRoadside\nHelp',
                                  style: TextStyle(
                                      color: Colors.black, 
                                      fontSize: MediaQuery.of(context).size.width > 410?18:14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width > 410 ? 10.0 : 0,
                    ), // Adds padding to each child
                    child: Card(
                      // height: 140,
                      child: Card(
                        elevation: 10,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width > 410
                                ? 10.0
                                : 2.0,
                          ), // Adds padding to each child
                          child: Container(
                            constraints: const BoxConstraints(
                              minHeight:
                                  140.0, // Set the maximum height (optional)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                Text(
                                  'View \nUpcoming\nWithdrawal',
                                  style: TextStyle(
                                      color: Colors.black, 
                                      fontSize: MediaQuery.of(context).size.width > 410?18:14),
                                      
                                ),
                              ],
                            ),
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
              Card(
                elevation: 10.0,
                child: ListTile(
                  leading: const Icon(
                    Icons.directions_car,
                    size: 48.0,
                    color: Colors.blue,
                  ),
                  title: const Text(
                    'Need to Make a Policy Change?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    'You can view or edit drivers, vehicle, or your coverage options.',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                  ),
                  onTap: () {},
                ),
              ),
              Card(
                elevation: 10.0,
                child: ListTile(
                  leading: const Icon(
                    Icons.directions_car,
                    size: 48.0,
                    color: Colors.blue,
                  ),
                  title: const Text(
                    'Need to Make a Policy Change?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    'You can view or edit drivers, vehicle,or your coverage options.',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                  ),
                  onTap: () {},
                ),
              ),
              Card(
                elevation: 10.0,
                child: ListTile(
                  leading: const Icon(
                    Icons.directions_car,
                    size: 48.0,
                    color: Colors.blue,
                  ),
                  title: const Text(
                    'Need to Make a Policy Change?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    'You can view or edit drivers, vehicle, or your coverage options.',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
