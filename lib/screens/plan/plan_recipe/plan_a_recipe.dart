import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanRecipe extends StatefulWidget {
  @override
  _PlanRecipeState createState() => _PlanRecipeState();
}

class _PlanRecipeState extends State<PlanRecipe> {
  TextEditingController recipe_name = new TextEditingController();

  //static const color1 = const Color(0xffb1E2C38);
  static const color2 = const Color(0xffb1D2834);
  static const color3 = const Color(0xffb22323F);
  static const color4 = const Color(0xffb5A7786);
  int _radioValue = 0;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
        case 3:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: color2,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(children: [
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(right: 20),
                          child: CircleAvatar(child: Image.asset(""))),
                      Text("Plan a Recipe",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 17)),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text("Add Picture",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15)),
                          ),
                          SizedBox(height: 50),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Recipe",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextField(
                                controller: recipe_name,
                                decoration: InputDecoration(
                                    hintText: "Name of the recipe",
                                    hintStyle: TextStyle(color: color4),
                                    filled: true,
                                    fillColor: color3,
                                    enabledBorder: new OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0)),
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2),
                                    )),
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Source",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextField(
                                controller: recipe_name,
                                autocorrect: true,
                                decoration: InputDecoration(
                                  hintText: "Link",
                                  hintStyle: TextStyle(color: color4),
                                  filled: true,
                                  fillColor: color3,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text("Meal category",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400)),
                            Container(
                              child: Row(
                                children: [
                                  new Radio(
                                    value: 0,
                                    groupValue: _radioValue,
                                    activeColor: Colors.white,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  new Text(
                                    'BreakFast',
                                    style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  new Radio(
                                    value: 0,
                                    groupValue: _radioValue,
                                    activeColor: Colors.white,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  new Text(
                                    'Lunch',
                                    style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  new Radio(
                                    value: 0,
                                    groupValue: _radioValue,
                                    activeColor: Colors.white,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  new Text(
                                    'Snacks',
                                    style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  new Radio(
                                    value: 0,
                                    groupValue: _radioValue,
                                    activeColor: Colors.white,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  new Text(
                                    'Dinner',
                                    style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Recipe category",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400)),
                            Container(
                              height: 100,
                              child: ListView.builder(
                                  itemCount: 1,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
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
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          margin: EdgeInsets.only(
                                              left: 20, right: 0, top: 20),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: color3,
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
                            SizedBox(
                              height: 10,
                            ),
                            Text("Cusines category",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400)),
                            Container(
                              height: 100,
                              child: ListView.builder(
                                  itemCount: 1,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
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
                                            borderRadius:
                                            BorderRadius.circular(10),
                                          ),
                                          margin: EdgeInsets.only(
                                              left: 20, right: 0, top: 20),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                color: color3,
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
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(height: 20),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Recipe",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: TextField(
                                      controller: recipe_name,
                                      decoration: InputDecoration(
                                          hintText: "describe the meal",
                                          hintStyle: TextStyle(color: color4),
                                          filled: true,
                                          fillColor: color3,
                                          contentPadding: EdgeInsets.symmetric(vertical:30,horizontal: 20),
                                          enabledBorder: new OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8.0)),
                                            borderSide: BorderSide(
                                                color: Colors.white, width: 2),
                                          )),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => PlanRecipe()));
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: 120,
                                            height:40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              border: Border.all(color: Colors.white),
                                            ),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image.asset("assets/save.png"),
                                                  SizedBox(width:5),
                                                  Text(
                                                    "Save",
                                                    style: TextStyle(color: Colors.white),
                                                  ),
                                                ])),
                                      ],
                                    ),
                                  ),
                                ]),
                          ]),
                    ]),
                  ),
                ))));
  }
}
