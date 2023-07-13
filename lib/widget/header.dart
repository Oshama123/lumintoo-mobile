import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:lumintoo_1/widget/sidenavigation.dart';

class header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(top: 40),
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 7,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                    child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Search Products, Brands, Or Nongoods",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontFamily: 'lumintoo',
                    ),
                  ),
                )),
              ),
            ),
            Expanded(
                flex: 5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        IconDataSolid(0xF004),
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        IconDataSolid(0xf0f3),
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        IconDataSolid(0xf2f6),
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        IconDataSolid(0xf0c9),
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
