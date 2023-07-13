import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lumintoo_1/acoount/account.dart';
import 'package:lumintoo_1/home/home.dart';

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
  int selectedIndex = 3;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final navigasi = [
    Home_view(),
    Leaderboard_view(),
    Nongoods_view(),
    Account_view()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: navigasi.elementAt(selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 248, 223, 106),
        child: Icon(Icons.add, color: Colors.black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(IconDataSolid(0xf015)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconDataSolid(0xf54e)),
            label: 'Nongoods',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconDataSolid(0xe473)),
            label: 'Leaderboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Color.fromARGB(255, 248, 223, 106),
        unselectedItemColor: Colors.white,
        onTap: onItemTapped,
      ),
    );
  }
}
