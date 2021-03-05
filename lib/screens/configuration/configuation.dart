import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/budget/create_budget/create_budget.dart';
import 'package:track_on_app_flutter/screens/budget/my_budget.dart';
import 'package:track_on_app_flutter/screens/categories/my_categories.dart';
import 'package:track_on_app_flutter/screens/members/add_members_list.dart';
import 'package:track_on_app_flutter/screens/my_balance/my_balance/my_balance.dart';
import 'package:track_on_app_flutter/screens/recipe_category/category/recipe_category.dart';
import 'package:track_on_app_flutter/screens/task/task__calendar/task_calendar.dart';
import 'package:track_on_app_flutter/screens/transaction/my_transaction/my_transaction.dart';

class Configuration extends StatefulWidget {
  @override
  _ConfigurationState createState() => _ConfigurationState();
}
class _ConfigurationState extends State<Configuration> {

  static const backgroundColor = const Color(0xffb243441);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
              color: backgroundColor,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(children: [
                Container(
                    height: 200,
                    alignment: Alignment.center,
                    child: Text(
                      "Configuration",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 40),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyBudget()));
                                  },
                                  child: Container(
                                    height: 200,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white.withOpacity(0.3),
                                          spreadRadius: 3,
                                          blurRadius: 15,
                                          offset: Offset(
                                              0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Card(
                                        elevation: 5,
                                        color: backgroundColor,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset("assets/budget_icon.png"),
                                            Text(
                                              "Budget",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        )),
                                  ),
                                ),
                                Expanded(child: Container()),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyCategories()));
                                  },
                                  child: Container(
                                    height: 200,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white.withOpacity(0.3),
                                          spreadRadius: 3,
                                          blurRadius: 15,
                                          offset: Offset(
                                              0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Card(
                                        elevation: 5,
                                        color:backgroundColor,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset(
                                                "assets/category_icon.png"),
                                            Text(
                                              "Category",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        )),
                                  ),
                                ),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 40),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 200,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white.withOpacity(0.3),
                                        spreadRadius: 3,
                                        blurRadius: 15,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AddMembers1()));
                                    },
                                    child: Card(
                                        elevation: 5,
                                        color: backgroundColor,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset(
                                                "assets/members_icon.png"),
                                            Text(
                                              "Members",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        )),
                                  ),
                                ),
                                Expanded(child: Container()),
                                InkWell(
                                  onTap:(){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyBalance()));
                                  },
                                  child: Container(
                                    height: 200,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      color:backgroundColor,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white.withOpacity(0.3),
                                          spreadRadius: 3,
                                          blurRadius: 15,
                                          offset: Offset(
                                              0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Card(
                                        elevation: 5,
                                        color: backgroundColor,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset("assets/menu_icon.png"),


                                         Text(
                                                "My Menu",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w300),
                                              ),

                                          ],
                                        )),
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    )),
                Expanded(child: Container()),
                Card(
                  elevation: 5,
                  shadowColor: Colors.white,
                  margin: EdgeInsets.only(left: 70, right: 70, bottom: 30),
                  color: backgroundColor,
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
                                      builder: (context) => MyTransaction()));
                            },
                            child: Image.asset("assets/transaction_icon.png"),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TaskCalendar()));
                              },
                              child: Image.asset("assets/list.png")),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RecipeCategory()));
                              },
                              child: Image.asset("assets/food.png")),
                        ]),
                  ),
                ),
              ])),
        ));
  }
}
