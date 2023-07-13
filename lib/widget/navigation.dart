import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lumintoo_1/acoount/account.dart';
import 'package:lumintoo_1/home/home.dart';

import 'package:lumintoo_1/leaderboard/leaderboard.dart';

import 'package:lumintoo_1/nongoods/nongoods.dart';
import 'package:lumintoo_1/widget/splash.dart';

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
    SplashScreen(),
    Nongoods_view(),
    Account_view()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: navigasi.elementAt(selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 248, 223, 106),
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                IconDataSolid(0xf015),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconDataSolid(0xe473),
              ),
              label: 'Leaderboard',
            ),
            BottomNavigationBarItem(
              icon: IgnorePointer(
                ignoring: true,
                child: IconButton(
                  icon: Icon(
                    IconDataSolid(0xe473),
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconDataSolid(0xf54e),
              ),
              label: 'Nongoods',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconDataSolid(0xf007),
              ),
              label: 'Account',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Color.fromARGB(255, 248, 223, 106),
          unselectedItemColor: Colors.white,
          //onTap: onItemTapped,
          onTap: (index) {
            if (index != 2) {
              onItemTapped(index);
            }
          },
          selectedFontSize: 12,
        ),
      ),
    );
  }
}
