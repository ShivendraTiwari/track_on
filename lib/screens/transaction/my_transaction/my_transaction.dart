import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/budget/my_budget.dart';

import 'package:track_on_app_flutter/screens/transaction/create_transaction/create_transaction.dart';

class MyTransaction extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyTransaction> {
  static const color = const Color(0xffb23323F);

  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(
        now.year, now.month, now.day, now.hour, now.minute, now.second);
    return Scaffold(
        body: SafeArea(
            child: Container(
      color: color,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
              height: 250,
              child: Card(
                color: color,
                shadowColor: Colors.white,
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "My Transaction",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 20),
                      child: CircleAvatar(
                        child: Image.asset(""),
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 100,
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 17,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          "Today",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        )),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "My Balance",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Image.asset(
                            "assets/rupee_icon.png",
                            color: Colors.white,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "490",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 100,
            padding: EdgeInsets.only(left: 20, right: 20),
            //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, int index) {
                  return Card(
                      color: color,
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/food2.png",
                              width: 40, height: 40),
                          Text(
                            "Housekeeping",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ));
                }),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, int index) {
                        return Card(
                            color: Colors.grey.shade900,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.only(
                                left: 20, right: 20, bottom: 10),
                            child: Container(
                              height: 100,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset("assets/cart_icon.png"),
                                    SizedBox(width: 25),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Grocery",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Text("22 jan 2021 10 am",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Text("Eggs,Bread,...",
                                            style:
                                                TextStyle(color: Colors.white))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/rupee_icon.png",
                                          color: Colors.white,
                                        ),
                                        Text("490",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600))
                                      ],
                                    ),
                                    Text("")
                                  ]),
                            ));
                      }),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        alignment: Alignment.bottomRight,
                        // height: 60,
                        // width: 60,
                        padding: EdgeInsets.only(right: 35, bottom: 10),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CreateTransaction()));
                              },
                              child: Container(
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: new Border.all(
                                      color: Colors.white,
                                      width: 1.0,
                                    )),
                                child: CircleAvatar(
                                    radius: 27,
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 30,
                                    )),
                              ),
                            ),
                            // Expanded(child:Container()),
                          ],
                        )),
                    Card(
                      elevation: 5,
                      shadowColor: Colors.white,
                      margin: EdgeInsets.only(left: 40, right: 40, bottom: 30),
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.grey)),
                      child: Container(
                        height: 65,
                        decoration: BoxDecoration(),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/home.png"),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MyTransaction()));
                                },
                                child:
                                    Image.asset("assets/transaction_icon.png"),
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyBudget()));
                                  },
                                  child: Image.asset("assets/list.png")),
                              Image.asset("assets/food.png"),
                            ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
