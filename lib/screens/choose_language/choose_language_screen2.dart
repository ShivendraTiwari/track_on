import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/mobile_number_verification/mobile_number_verification.dart';
import 'package:translator/translator.dart';

class LanguageSelection extends StatefulWidget {
  @override
  _LanguageScreen2State createState() => _LanguageScreen2State();
}

class _LanguageScreen2State extends State<LanguageSelection> {

  static const backgroundColor = const Color(0xffb243441);
  static const textColor1 = const Color(0xffbF5F5F5);
  static const textColor2 = const Color(0xffb707070);
  var translation;

  void main() async {
    final translator = GoogleTranslator();

    final input = "Здравствуйте. Ты в порядке?";

    translator.translate(input, from: 'ru', to: 'en').then(print);
    // prints Hello. Are you okay?

    translation = await translator.translate("Dart is very cool!", to: 'pl');
    print(translation);
    // prints Dart jest bardzo fajny!

    print(await "example".translate(to: 'pt'));
    // prints exemplo
  }

  final translator = GoogleTranslator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color:backgroundColor,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  height: 300,
                  child: Image.asset("assets/image2.png"),
                  margin: EdgeInsets.only(top: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  // child: Text("$translation",style: TextStyle(color: Colors.white),)
                  child: Text(
                    "Choose your Language",
                    style: TextStyle(
                        color: textColor1,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //Text("qwq"),
                SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey.shade700)),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 80, right: 80),
                  child: Text(
                    "English",
                    style:
                        TextStyle(color: textColor1, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey.shade700)),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 80, right: 80),
                  child: Text(
                    "Hindi",
                    style:
                        TextStyle(color: textColor1, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(child: Container()),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MobileNumberVerification()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey.shade700),
                      color: backgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(bottom: 50, left: 120, right: 120),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: Text(
                      "Continue",
                      style:
                          TextStyle(color:textColor1, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
        ),
          ),

  ));
  }
}
