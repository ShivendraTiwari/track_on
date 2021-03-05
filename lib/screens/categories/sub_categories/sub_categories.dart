import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/categories/sub_categories/sub_categories_gridview.dart';
class SubCategories extends StatefulWidget {
  @override
  _SubCategoriesState createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<SubCategories> {
  TextEditingController search_box = new TextEditingController();
  static const backgroundColor = const Color(0xffb243441);
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
                  Card(
                    elevation: 10,
                    shadowColor: Colors.white,
                    color:backgroundColor,
                    child: Container(
                      height: 200,
                      child: Column(children: [
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: Container()),
                                Text(
                                  "Sub Category of Grocery",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ),
                                //Expanded(child: Container()),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left:10),
                                  child: Container(
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: new Border.all(
                                          color: Colors.white,
                                          width: 1.0,
                                        )),
                                    child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.transparent,
                                        child: Image.asset("assets/cart_icon.png",fit: BoxFit.cover,width:17,height: 17,)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: Image.asset("")),
                                ),
                              ]),
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(0),
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
                    child: SubCategoriesGridView(),
                  )),

                ]),
              ),
            )));
  }
}
