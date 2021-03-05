import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/budget/my_budget.dart';
import 'package:track_on_app_flutter/screens/categories/add_category.dart';
import 'package:track_on_app_flutter/screens/plan/plan_meal/plan_a_meal.dart';
import 'package:track_on_app_flutter/screens/recipe_category/category/recipe_category.dart';
import 'package:track_on_app_flutter/screens/recipe_category/recipe/recipe.dart';


class GridViewRecipeCategory extends StatefulWidget {
  @override
  _GridViewRecipeCategoryState createState() => _GridViewRecipeCategoryState();
}

class _GridViewRecipeCategoryState extends State<GridViewRecipeCategory> {

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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Recipe()));
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
                              "Main Course",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Image.asset("assets/main_course.png"),
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
                  padding: EdgeInsets.only(right: 35, bottom: 10),
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
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RecipeCategory()));
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
                                    builder: (context) => PlanMeal()));
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
              ),
            ],
          ),
        ],
      ),
    )));
  }
}
