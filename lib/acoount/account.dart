import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lumintoo_1/login/login.dart';
import 'package:lumintoo_1/login/signup.dart';

class Account_view extends StatelessWidget {
  const Account_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Container(
                padding: EdgeInsets.only(top: 60),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 7,
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
                        flex: 5,
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Login_view(),
                                    ));
                              },
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
            SizedBox(
              child: Padding(padding: EdgeInsets.only(top: 90)),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/images/account.png"),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Lumintoo App",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontFamily: 'lumintoo',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text("- No Rank -",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'lumintoo',
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.thumb_up),
                      SizedBox(
                        width: 10,
                      ),
                      Text('0 Like',
                          style: TextStyle(
                              fontFamily: 'lumintoo',
                              fontSize: 20,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.chat),
                      SizedBox(
                        width: 10,
                      ),
                      Text('0 Ulasan',
                          style: TextStyle(
                              fontFamily: 'lumintoo',
                              fontSize: 20,
                              fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login_view()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary:
                            Colors.black, // Warna latar belakang tombol "Login"
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white), // Warna teks tombol "Login"
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 248, 223, 106),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors
                                .black), // Warna teks tombol "Daftar Sekarang"
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
