import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:lumintoo_1/widget/header.dart';

import '../widget/iconkategori.dart';

class Home_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 0.4,
            ),
            Container(
              height: 120,
              color: Color.fromARGB(255, 0, 0, 0),
              child: header(),
            ),
            Container(
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 16 / 7,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 1.2,
                    ),
                    items: [
                      AssetImage("assets/images/1a.jpg"),
                      AssetImage("assets/images/1.jpg"),
                      AssetImage("assets/images/map.jpg"),
                    ].map((image) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 77, 76, 76),
                              image: DecorationImage(
                                image: image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: InkWell(
                              onTap: () {
                                //Navigator.pushReplacement(
                                //  );
                              },
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        IconKategori(
                          title: "Car",
                          icon: "assets/icons/car.png",
                        ),
                        IconKategori(
                          title: "Motor Cycle",
                          icon: "assets/icons/motorcyle.png",
                        ),
                        IconKategori(
                          title: "Bycile",
                          icon: "assets/icons/bike.png",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Harga Min ',
                                    style: TextStyle(fontFamily: 'lumintoo')),
                                SizedBox(width: 15),
                                Expanded(
                                    child: TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]'))
                                  ],
                                  decoration: InputDecoration(
                                      prefixText: 'Rp. ',
                                      prefixStyle:
                                          TextStyle(fontFamily: 'lumintoo')),
                                ))
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text('Harga Max ',
                                    style: TextStyle(fontFamily: 'lumintoo')),
                                SizedBox(width: 15),
                                Expanded(
                                    child: TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]'))
                                  ],
                                  decoration: InputDecoration(
                                      prefixText: 'Rp. ',
                                      prefixStyle:
                                          TextStyle(fontFamily: 'lumintoo')),
                                ))
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12.0, horizontal: 24.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      fontFamily: 'lumintoo',
                                      color:
                                          Color.fromARGB(255, 248, 223, 106)),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                    child: Text(
                      'Car',
                      style: TextStyle(
                          fontFamily: 'lumintoo',
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xfff8e172)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 78,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      'assets/icons/icon.png',
                                      width: 27,
                                      height: 27,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 30),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          child: Image.asset(
                                            'assets/icons/star.png',
                                            width: 20,
                                            height: 29,
                                          ),
                                        ),
                                        Text('0',
                                            style: TextStyle(
                                                fontFamily: 'lumintoo',
                                                fontSize: 9,
                                                height: 2,
                                                color: Colors.black)),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 30),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          child: Image.asset(
                                            'assets/icons/thubsUp.png',
                                            width: 20,
                                            height: 29,
                                          ),
                                        ),
                                        Text('Belum ada',
                                            style: TextStyle(
                                                fontFamily: 'lumintoo',
                                                fontSize: 9,
                                                height: 2,
                                                color: Colors.black)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              width: double.infinity,
                              height: 100,
                              child: Stack(
                                children: [
                                  Container(
                                    child: Align(
                                      child: SizedBox(
                                        width: 400,
                                        height: 400,
                                        child: Image.asset(
                                            'assets/images/1.jpg',
                                            fit: BoxFit.contain),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 94),
                                    child: Align(
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 100,
                                        child: Text(
                                            'Lorem Product'.toUpperCase(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'lumintoo',
                                                fontSize: 9,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 20,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black45))),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                    child: Text(
                      'Motor Ciycle',
                      style: TextStyle(
                          fontFamily: 'lumintoo',
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 40),
                          Text(
                            'Tingkatkan Poinmu dengan Tambah Produk, Yuk! ',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'lumintoo'),
                          ),
                          Icon(
                            Icons.thumb_up,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 20,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black45))),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                    child: Text(
                      'Bycile',
                      style: TextStyle(
                          fontFamily: 'lumintoo',
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 40),
                          Text(
                            'Tingkatkan Poinmu dengan Tambah Produk, Yuk! ',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'lumintoo'),
                          ),
                          Icon(
                            Icons.thumb_up,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 20,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black45))),
                      ),
                    ],
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
