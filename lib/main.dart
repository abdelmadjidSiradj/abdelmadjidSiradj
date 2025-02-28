import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int select = 0;
  List<Widget> list1 = [
    Text("Page 1 ",
        style: TextStyle(
            fontSize: 20, color: const Color.fromARGB(255, 10, 10, 10))),
    Text("Page 2 ",
        style:
            TextStyle(fontSize: 20, color: const Color.fromARGB(255, 8, 8, 8))),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 85, 18, 192),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (val) {
              setState(() {
                select = val;
              });
            },
            currentIndex: select,
            selectedFontSize: 22.5,
            unselectedFontSize: 12.5,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "Home", tooltip: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                  tooltip: "Settings",
                  activeIcon: Icon(
                    Icons.settings,
                    color: const Color.fromARGB(255, 240, 133, 10),
                  ))
            ]),
        appBar: AppBar(
          title: Text(
            select == 0 ? "Home" : "Settings",
            style: TextStyle(
              color: Colors.red,
              fontSize: 35.8,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 82, 17, 204),
        ),

        //show the icon in blow of app

        body: Column(
          children: [
            Container(
              height: 625,
              child: PageView(
                controller: PageController(
                  initialPage: select,
                ),
                onPageChanged: (index) {
                  setState(() {
                    select = index;
                  });
                },
                children: list1,
              ),
            )
          ],
        ),

        /*Center(
          child: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png", 
            width: 200, 
            height: 200,
            
          ),
        ),*/
      ),
    );
  }
}
