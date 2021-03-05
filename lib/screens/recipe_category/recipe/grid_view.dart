import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/budget/my_budget.dart';
import 'package:track_on_app_flutter/screens/categories/sub_categories/add_sub_category.dart';
import 'package:track_on_app_flutter/screens/recipe_category/category/recipe_category.dart';
import 'package:track_on_app_flutter/screens/transaction/my_transaction/my_transaction.dart';

class RecipeGridView extends StatefulWidget {
  @override
  _RecipeGridVewState createState() => _RecipeGridVewState();
}

class _RecipeGridVewState extends State<RecipeGridView> {

  static const backgroundColor = const Color(0xffb243441);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              color: backgroundColor,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  GridView.builder(
                      itemCount: 5,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.5,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 5,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return  Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 20),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: backgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Wrap(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                alignment: WrapAlignment.center,
                                children: [

                                  Image.asset("assets/Oatmeal.png", fit: BoxFit.fill),

                                  Expanded(
                                      child: Text(
                                        "Oat meal",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),


                                  // InkWell(
                                  //     onTap:(){
                                  //       Navigator.push(context,MaterialPageRoute(builder: (context)=>RecipeCategory()));
                                  //     },
                                  //     child: Image.asset("assets/food.png")),
                                ],
                              )));
                      }),
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
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => AddSubCategory()));
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
                              // Expanded(child:Container()),
                            ],
                          )),
                      Container(
                        //  height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.white)
                        ),
                        margin: EdgeInsets.only(
                            left: 40, right: 40, bottom: 30),

                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RecipeCategory()));
                                },
                                child: Row(
                                  children: [
                                    Image.asset("assets/food.png"),
                                    Text(
                                      "Cook",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MyTransaction()));
                                },
                                child: Row(
                                  children: [
                                    Image.asset("assets/plan.png"),
                                    Text(
                                      "Plan",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyBudget()));
                                  },
                                  child: Row(
                                    children: [
                                      Image.asset("assets/shop.png"),
                                      Text(
                                        "Shop",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )),

                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ))
    );
  }
}
