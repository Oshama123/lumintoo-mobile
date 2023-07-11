import 'package:flutter/material.dart';
import 'package:lumintoo_1/login/signup.dart';

class Login_view extends StatefulWidget {
  @override
  State<Login_view> createState() => _Login_viewState();
}

class _Login_viewState extends State<Login_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        child: ListView(
          children: [
            SizedBox(height: 40),
            Container(
              alignment: Alignment.center,
              height: 60,
              child: Image.asset(
                "assets/logo/logo-login.png",
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Text(
                "Masuk dengan email atau username yang sudah terdaftar di Lumintoo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'lumintoo',
                  color: Color.fromARGB(255, 248, 223, 106),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(padding: EdgeInsets.symmetric(vertical: 3.0)),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'lumintoo',
                  color: Color.fromARGB(255, 233, 190, 126)),
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromARGB(255, 233, 190, 126),
                )),
                hintText: ("Email atau Username"),
                hintStyle: TextStyle(
                  fontFamily: 'lumintoo',
                  fontSize: 20,
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromARGB(255, 248, 223, 106),
                )),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => SignUp(), //Get.offAllNamed(Routes.HOME),
              child: Text(
                "Selanjutnya",
                style: TextStyle(
                  color: Color.fromARGB(255, 248, 223, 106),
                  fontSize: 27,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onSurface: Colors.black,
                fixedSize: Size(20, 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: BorderSide(
                      color: Color.fromARGB(255, 248, 223, 106), width: 1.8),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Text(
                "Belum punya akun sebelumnya?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'lumintoo',
                  color: Color.fromARGB(255, 248, 223, 106),
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 248, 223, 106),
                fixedSize: Size(20, 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Text(
                'Yuk Daftar',
                style: TextStyle(
                  fontFamily: 'lumintoo',
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                '#RekomendasimuKebaikanmu',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'lumintoo',
                    color: Color.fromARGB(255, 248, 223, 106),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            )
          ],
        ),
      ),
    );
  }
}
