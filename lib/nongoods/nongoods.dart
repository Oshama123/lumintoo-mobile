import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widget/iconkategori.dart';
import '../widget/sidenavigation.dart';

class Nongoods_view extends StatefulWidget {
  @override
  State<Nongoods_view> createState() => _Nongoods_viewState();
}

class _Nongoods_viewState extends State<Nongoods_view> {
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
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(height: 16),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconKategori(
                                      title: "Car Repair Shop",
                                      icon: "assets/icons/carRepair-active.png",
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    IconKategori(
                                      title: "Bike Shope",
                                      icon: "assets/icons/bikeshope-active.png",
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    IconKategori(
                                      title: "Wheel & Rims Shop",
                                      icon: "assets/icons/Wheel-active.png",
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    IconKategori(
                                      title: "Body Workshop",
                                      icon: "assets/icons/bodyWorkshop.png",
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    IconKategori(
                                      title: "Specialist Workshop",
                                      icon:
                                          "assets/icons/specialistWorkshop.png",
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    IconKategori(
                                      title: "Automotive Dealer",
                                      icon: "assets/icons/bike.png",
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Text('Filter',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontFamily: 'Lumintoo',
                                        color: Colors.black)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  'Provinsi',
                                  style: TextStyle(
                                      fontFamily: 'lumintoo',
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    color: Color.fromARGB(255, 252, 249, 234),
                                    padding: EdgeInsets.all(16),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 20),
                                          ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.black,
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 12.0,
                                                    horizontal: 24.0),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              child: Text(
                                                'Apply',
                                                style: TextStyle(
                                                    fontFamily: 'lumintoo',
                                                    color: Color.fromARGB(
                                                        255, 248, 223, 106)),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.all(10),
                                    color: Color.fromARGB(255, 248, 223, 106),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Car',
                                      style: TextStyle(
                                          fontFamily: 'lumintoo',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 40),
                                          Text(
                                            'Tingkatkan Poinmu dengan Tambah Produk, Yuk! ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'lumintoo'),
                                          ),
                                          Icon(
                                            Icons.thumb_up,
                                            color: Colors.yellow,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.black45))),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 25),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.all(10),
                                    color: Color.fromARGB(255, 248, 223, 106),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Motor Ciycle',
                                      style: TextStyle(
                                          fontFamily: 'lumintoo',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 40),
                                          Text(
                                            'Tingkatkan Poinmu dengan Tambah Produk, Yuk! ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'lumintoo'),
                                          ),
                                          Icon(
                                            Icons.thumb_up,
                                            color: Colors.yellow,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.black45))),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 25),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.all(10),
                                    color: Color.fromARGB(255, 248, 223, 106),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Bycile',
                                      style: TextStyle(
                                          fontFamily: 'lumintoo',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 40),
                                          Text(
                                            'Tingkatkan Poinmu dengan Tambah Produk, Yuk! ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'lumintoo'),
                                          ),
                                          Icon(
                                            Icons.thumb_up,
                                            color: Colors.yellow,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.black45))),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
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
