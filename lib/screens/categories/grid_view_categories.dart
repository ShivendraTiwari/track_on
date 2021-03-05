import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/budget/my_budget.dart';
import 'package:track_on_app_flutter/screens/categories/sub_categories/sub_categories.dart';
import 'package:track_on_app_flutter/screens/recipe_category/category/recipe_category.dart';
import 'package:track_on_app_flutter/screens/transaction/my_transaction/my_transaction.dart';

import 'add_category.dart';

//We have used this class in my_categories file in categories package for grid view layout
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  static const backgroundColor = const Color(0xffb243441);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      height: MediaQuery.of(context).size.height,
      color: backgroundColor,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          GridView.builder(
              itemCount: 19,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.7,
                crossAxisSpacing: 0,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SubCategories()));
                  },
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: backgroundColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Dine Out",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Image.asset("assets/food2.png"),
                          ],
                        )),
                  ),
                );
              }),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  alignment: Alignment.bottomRight,
                  // height: 60,
                  // width: 60,
                  padding:EdgeInsets.only(right:35,bottom:10),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddCategory()));
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
              Card(
                elevation: 5,
                shadowColor: Colors.white,
                margin: EdgeInsets.only(left: 40, right: 40, bottom: 30),
                color:backgroundColor,
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
          ),
        ],
      ),
    )));
  }
}
