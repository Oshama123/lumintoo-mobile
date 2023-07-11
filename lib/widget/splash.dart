import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Center(
        child: Image.asset(
          "assets/logo/logo-splash.png",
          height: 200.0,
          width: 200.0,
        ),
      ),
    );
  }
}
