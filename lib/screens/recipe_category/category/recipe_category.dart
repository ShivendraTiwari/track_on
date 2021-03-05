import 'package:flutter/material.dart';

import 'grid_view.dart';

class RecipeCategory extends StatefulWidget {
  @override
  _RecipeCategoryState createState() => _RecipeCategoryState();
}

class _RecipeCategoryState extends State<RecipeCategory> {
  TextEditingController search_box = new TextEditingController();
  static const backgroundColor = const Color(0xffb243441);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      color: backgroundColor,
      child: Column(children: [
        Card(
          elevation: 10,
          shadowColor: Colors.white,
          color:backgroundColor,
          child: Container(
            height: 200,
            child: Column(children: [
              Expanded(child: Container()),
              Container(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Image.asset("")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "Recipe Category",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
              //Expanded(child: Container()),

              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 50, bottom: 10),
                    child: TextField(
                      controller: search_box,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          hintText: "Search here...",
                          fillColor: Colors.white.withOpacity(0.2),
                          prefixIcon: Image.asset("assets/search.png"),
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ),
                  )),
            ]),
          ),
        ),
        Expanded(
            child: Container(
          height: MediaQuery.of(context).size.height,
          child: GridViewRecipeCategory(),
        )),
      ]),
    )));
  }
}
