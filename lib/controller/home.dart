import 'package:flutter/material.dart';

import '../model/bar_choice.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int currentIndex = 0;
  List<BarChoice> myItems = [
    BarChoice(label: "Music", iconData: Icons.music_note, page: Container()),
    BarChoice(label: "Favoris", iconData: Icons.whatshot, page: Container()),
    BarChoice(label: "Search", iconData: Icons.search, page: Container())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: SafeArea(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Spacer(),
                          Icon(Icons.radio),
                          Icon(Icons.doorbell),
                          Icon(Icons.settings),
                        ],
                      ),
                      Text("My music app"),
                    ],
                  )))),
      body: const Center(child: Text("Mon App")),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: myItems.map((i) => i.item).toList(),
        onTap: barTapped,
      ),
    );
  }

  barTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
