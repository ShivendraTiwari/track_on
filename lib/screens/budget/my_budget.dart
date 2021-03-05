import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/recipe_category/category/recipe_category.dart';
import 'package:track_on_app_flutter/screens/transaction/my_transaction/my_transaction.dart';

import 'create_budget/create_budget.dart';

class MyBudget extends StatefulWidget {
  @override
  _MyBudgetState createState() => _MyBudgetState();
}

class _MyBudgetState extends State<MyBudget> {
  static const color = const Color(0xffb1E2C38);
  static const backgroundColor = const Color(0xffb243441);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: backgroundColor,
                child: Column(
                  children: [
                    Container(
                        height: 200,
                        child: Card(
                          elevation: 10,
                          shadowColor: Colors.white,
                          color: backgroundColor,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: Container()),
                                Text(
                                  "My Budget",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22),
                                ),
                                Expanded(child: Container()),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: Image.asset("")),
                                ),
                              ]),
                        )),
                    SizedBox(height: 5),
                    Stack(
                      children: [
                        Image.asset("assets/MyBudget.png"),
                        Padding(
                          padding: const EdgeInsets.only(left: 60, top: 80),
                          child: Image.asset("assets/MyBudget2.png",
                              fit: BoxFit.cover),
                        )
                      ],
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 40),
                     child:Container(
                       height: 100,
                       child: ListView.builder(
                           itemCount: 1,
                           scrollDirection: Axis.horizontal,
                           itemBuilder: (BuildContext context, int index) {
                             return InkWell(
                               onTap: () {
                                 // Navigator.push(
                                 //     context,
                                 //     MaterialPageRoute(
                                 //         builder: (context) => SubCategories()));
                               },
                               child: Container(
                                 height: 50,
                                 width: 100,
                                 child: Card(
                                   elevation: 6,
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   margin: EdgeInsets.only(
                                       left: 20, right: 0, top: 20),
                                   child: Container(
                                       decoration: BoxDecoration(
                                         borderRadius:
                                         BorderRadius.circular(10),
                                         color: color,
                                       ),
                                       child: Icon(
                                         Icons.add,
                                         color: Colors.blue,
                                         size: 35,
                                       )),
                                 ),
                               ),
                             );
                           }),
                     ),
                    ),
                    Expanded(child: Container()),
                    Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                            child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 30, bottom: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CreateBudget()));
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
                                          backgroundColor: backgroundColor,
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 30,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shadowColor: Colors.white,
                              margin: EdgeInsets.only(
                                  left: 40, right: 40, bottom: 30),
                              color: backgroundColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: BorderSide(color: Colors.grey)),
                              child: Container(
                                height: 65,
                                decoration: BoxDecoration(),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/home.png"),
                                      InkWell(
                                        onTap:(){
                                          Navigator.push(context,MaterialPageRoute(builder: (context)=>MyTransaction()));
                                        },
                                        child: Image.asset(
                                            "assets/transaction_icon.png"),
                                      ),
                                      InkWell(
                                          onTap:(){
                                            Navigator.push(context,MaterialPageRoute(builder: (context)=>MyBudget()));
                                          },
                                          child: Image.asset("assets/list.png")),
                                      InkWell(
                                          onTap:(){
                                            Navigator.push(context,MaterialPageRoute(builder: (context)=>RecipeCategory()));
                                          },
                                          child: Image.asset("assets/food.png")),
                                    ]),
                              ),
                            ),
                          ],
                        ))),
                  ],
                ))));
  }
}
