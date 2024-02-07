// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: "Demo Flutter App",
      home: const MyHomePage(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text(
//             "Home Page",
//             style: TextStyle(
//                 color: Colors.amberAccent[700], fontWeight: FontWeight.w900),
//           ),
//           backgroundColor: Colors.purple[900]),
//       drawer: Container(
//         color: Colors.pink[600],
//         width: 400,
//         height: MediaQuery.of(context).size.height,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             ListTile(
//               leading: Icon(
//                 Icons.dashboard_rounded,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 "Dashboard",
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 print("dashboard");
//               },
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.account_box_rounded,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 "Accounts",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.inventory_2_rounded,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 "Inventory",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.settings_rounded,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 "Settings",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Eloja",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.white)),
        centerTitle: false,
        backgroundColor: Colors.purple[900],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
        child: Wrap(
          spacing: 15.0,
          children: [
            //* E-commerce card
            Card(
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                width: 300,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://i.kym-cdn.com/entries/icons/original/000/047/940/cat_eating_looking_up.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.white),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Text"),
                          Text(
                            "₱200",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 80,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Does nothing
                                  },
                                  child: Text(
                                    "Cart",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.blue[900]),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0)))),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Does nothing
                                  },
                                  child: Text(
                                    "Buy",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.blue[900]),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0)))),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            //* Message Notification Bubble
            SizedBox(
              width: 200,
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                            child: Text("How are you",
                                style: TextStyle(fontSize: 17.0))),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("February 7, 2024",
                                    style: TextStyle(fontSize: 10.0)),
                                Text("7:40 AM",
                                    style: TextStyle(fontSize: 10.0)),
                              ],
                            ),
                          ),
                        )
                      ]),
                ),
              ),
            ),
            //* Social Media Card
            SizedBox(
              width: 400,
              height: 200,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://i.kym-cdn.com/entries/icons/original/000/047/940/cat_eating_looking_up.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Name",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Designation",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Expanded(child: SizedBox()),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Posts\n99",
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Followers\n8",
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //* Social Media Card (Rounded)
            SizedBox(
              width: 300,
              height: 300,
              child: Card(
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: 130,
                          color: Colors.amber[700],
                        ),
                        Positioned(
                            bottom: -40,
                            child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 10.0,
                                        strokeAlign: 1.0,
                                        color:
                                            Color.fromARGB(255, 247, 242, 249)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://i.kym-cdn.com/entries/icons/original/000/047/940/cat_eating_looking_up.jpg"))))),
                      ],
                      clipBehavior: Clip.none,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15.0, 45.0, 15.0, 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Your Names",
                            ),
                            Expanded(child: SizedBox()),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Posts\n99",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 17.0),
                                ),
                                Text(
                                  "Followers\n8",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 17.0),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
