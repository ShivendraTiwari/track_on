import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/transaction/confirm_transaction/confirm_transaction.dart';

class CreateTransaction extends StatefulWidget {
  @override
  _CreateTransactionState createState() => _CreateTransactionState();
}

class _CreateTransactionState extends State<CreateTransaction> {
  TextEditingController price = new TextEditingController();
  static const color = const Color(0xffb243441);
  static const color2 = const Color(0xffb243441);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
      child: Container(
          color: color,
          child: Column(
            children: [
              Card(
                color: color2,
                elevation: 7,
                child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: color2,
                    ),
                    child: Column(
                      children: [
                        // Expanded(child:Container()),
                        Container(height: 80),
                        Text("My Transaction",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            child: Image.asset(""),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("My Balance",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 19)),
                              Image.asset("assets/rupee_icon.png",
                                  color: Colors.white),
                              Text(
                                "490",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 17,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                width: 180,
                height: 120,
                child: Text(
                  "Cash Transfer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: price,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter amount",
                    hintStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 25,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    prefixIcon: Image.asset("assets/rupee_icon.png",
                        color: Colors.white, height: 20, width: 20),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),

       Container(
                  height: 50,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 15,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child:
                  FlatButton(
                      child: Text(
                        "Proceed",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            letterSpacing: 1),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConfirmTransaction()));
                      },
                    ),
                ),

            ],
          )),
    ));
  }
}
