import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Account_view extends StatelessWidget {
  const Account_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          padding: EdgeInsets.only(top: 60),
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  child: Text(
                    "Akun Saya",
                    style: TextStyle(
                        fontFamily: 'lumintoo',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          IconDataSolid(0xF004),
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          IconDataSolid(0xf0f3),
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          IconDataSolid(0xf2f6),
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          IconDataSolid(0xf0c9),
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
