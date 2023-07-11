import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widget/sidenavigation.dart';

class Leaderboard_view extends StatefulWidget {
  @override
  State<Leaderboard_view> createState() => _Leaderboard_viewState();
}

class _Leaderboard_viewState extends State<Leaderboard_view> {
  double minHeight = 152.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            child: Container(
              height: 170,
              color: Color.fromARGB(255, 248, 223, 106),
            ),
          ),
          Container(
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        padding: EdgeInsets.only(top: 50),
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 15.0,
                                  child: Text(
                                    "Halo, Gabung Dengan Lumintoo Yuk",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'lumintoo',
                                        fontSize: 16.0),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(Icons.menu, color: Colors.black),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SidenavButton(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        hintText:
                                            "Search Products, Brands, Or Nongoods",
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                          fontFamily: 'lumintoo',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 8 / 2.7,
                        autoPlay: true,
                        viewportFraction: 2,
                      ),
                      items: [
                        AssetImage("assets/images/1a.jpg"),
                      ].map((image) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 2.0),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 77, 76, 76),
                                image: DecorationImage(
                                  image: image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
                Container(
                  height: 7,
                  color: Colors.grey[300],
                ),
                Expanded(
                  child: Container(
                    // color: Colors.purple,
                    child: Column(
                      children: [
                        // body
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      width: 160,
                                      child: Text('Tunggu Kehadiran Kami, ya',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'lumintoo',
                                            color: Colors.black,
                                            fontSize: 20,
                                          )),
                                    ),
                                  ),
                                  Container(
                                    child: Container(
                                      padding: EdgeInsets.only(bottom: 20),
                                      width: 160,
                                      child: Text('Coming Soon'.toUpperCase(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'lumintoo',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 40,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: minHeight,
                        ),
                        // Navigation
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  ItemKategori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 24,
          height: 24,
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'lumintoo',
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
