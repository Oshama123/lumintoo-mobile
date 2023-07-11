import 'package:flutter/material.dart';

import 'iconkategori.dart';

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconKategori(
                  title: "Car",
                  icon: "assets/icons/car.png",
                ),
                IconKategori(
                  title: "Motor Cycle",
                  icon: "assets/icons/motorcyle.png",
                ),
                IconKategori(
                  title: "Bicycle",
                  icon: "assets/icons/bike.png",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
