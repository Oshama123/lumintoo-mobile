import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
