import 'package:flutter/material.dart';

import 'grid_view.dart';

class Recipe extends StatefulWidget {
  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  TextEditingController search_box = new TextEditingController();
  static const backgroundColor = const Color(0xffb243441);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color:backgroundColor,
              height: MediaQuery.of(context).size.height,
              child: Column(
                  children: [
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
                            padding: const EdgeInsets.only(bottom:20),
                            child: Text(
                              "Recipe",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 50, bottom: 10),
                                child: TextField(
                                  controller: search_box,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      filled: true,
                                      hintText: "Search here...",
                                      fillColor: Colors.white.withOpacity(0.2),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ),
                              )),
                        ]),
                      ),
                    ),
                    Expanded(child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: RecipeGridView(),
                    )),
                  ]),
            ),
          ))
    );
  }
}
