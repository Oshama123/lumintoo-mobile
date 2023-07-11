import 'package:flutter/material.dart';

class SidenavButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Container(
          color: Colors.black, // Latar belakang hitam
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Text(
                  'Right Side Navigation',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Menu 1', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Tambahkan logika yang diinginkan saat menu 1 diklik
                  Navigator.pop(context); // Menutup Right Side Navigation
                },
              ),
              ListTile(
                title: Text('Menu 2', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Tambahkan logika yang diinginkan saat menu 2 diklik
                  Navigator.pop(context); // Menutup Right Side Navigation
                },
              ),
              // Tambahkan menu lainnya sesuai kebutuhan Anda
            ],
          ),
        ),
      ),
    );
  }
}
