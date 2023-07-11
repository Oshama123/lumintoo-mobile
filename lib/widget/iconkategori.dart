import 'package:flutter/material.dart';

class IconKategori extends StatelessWidget {
  final String title;
  final String icon;

  IconKategori({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        fixedSize: Size(105, 105),
      ),
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Image.asset(
              icon,
              width: 24,
              height: 24,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'lumintoo',
                fontSize: 15,
                color: Color.fromARGB(255, 248, 223, 106),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
