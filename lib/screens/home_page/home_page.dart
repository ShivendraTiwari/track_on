import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/choose_language/choose_language_screen2.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const backgroundColor = const Color(0xffb243441);
  static const textColor1 = const Color(0xffbF5F5F5);
  static const textColor2 = const Color(0xffb707070);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: GestureDetector(
              child: Carousel(
                  boxFit: BoxFit.fitWidth,
                  autoplay: true,
                  //animationCurve: Curves.fastOutSlowIn,
                   animationDuration: Duration(milliseconds: 1000),
                  //autoplayDuration: Duration(milliseconds: 3000),
                  //dotSize: 6.0,
                  //dotIncreasedColor: Color(0xFF000000),
                  dotBgColor: Colors.black,
                  //dotPosition: DotPosition.bottomCenter,
                  //dotVerticalPadding: 10.0,
                  showIndicator: false,
                  //indicatorBgPadding: 7.0,
                  images: [
          Container(
                height: MediaQuery.of(context).size.height,
                color: backgroundColor,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        child:Image.asset("assets/image1.png"),
                          margin:EdgeInsets.only(top:30)
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Welcome to",
                        style: TextStyle(
                            color: textColor1,
                            letterSpacing: 1,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 60),
                      Text(
                        "Trackon",
                        style: TextStyle(
                            color:textColor2, letterSpacing: 2, fontSize: 35),
                      ),
                      SizedBox(height: 70),
                      Text(
                        "Take Control of your House Management",
                        style: TextStyle(
                            color: textColor1, letterSpacing: 1,fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "and sit back relax!!",
                        style: TextStyle(
                            color: textColor1, letterSpacing: 1,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )),

                      LanguageSelection(),

        ]),
            )));
  }
}
