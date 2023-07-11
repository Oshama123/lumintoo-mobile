import 'package:flutter/material.dart';
import 'package:lumintoo_1/home/home.dart';
//import 'package:lumintoo_1/login/login.dart';
import 'package:lumintoo_1/leaderboard/leaderboard.dart';

import 'package:lumintoo_1/nongoods/nongoods.dart';

class Navigation extends StatefulWidget {
  const Navigation({
    Key? key,
  }) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final pilihPageWidget = [
    Home_view(),
    Leaderboard_view(),
    Nongoods_view(),
    //Login_view(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pilihPageWidget.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'b',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'c',
          ),
          /*BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'c',
          ),*/
        ],
        currentIndex: selectedIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Color.fromARGB(255, 248, 223, 106),
        unselectedItemColor: Colors.white,
        onTap: onItemTapped,
      ),
    );
  }
}
