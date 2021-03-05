import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/plan/plan_recipe/plan_a_recipe.dart';

class PlanMeal extends StatefulWidget {
  @override
  _PlanMealState createState() => _PlanMealState();
}



class _PlanMealState extends State<PlanMeal> {
  TextEditingController recipe = new TextEditingController();
  TextEditingController cookname = new TextEditingController();
  TextEditingController instruction = new TextEditingController();
  static const color = const Color(0xffb1E2C38);
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
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Container(
                color: color,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 20, top: 20),
                        child: CircleAvatar(),
                      ),
                      Text(
                        "Plan a Meal",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      SizedBox(height: 60),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            new Radio(
                              value: 0,
                              groupValue: _radioValue,
                              activeColor: Colors.white,
                              onChanged: _handleRadioValueChange,
                            ),
                            new Text(
                              'BreakFast',
                              style: new TextStyle(color: Colors.white),
                            ),
                            new Radio(
                              value: 1,
                              groupValue: _radioValue,
                              activeColor: Colors.white,
                              onChanged: _handleRadioValueChange,
                            ),
                            new Text(
                              'Lunch',
                              style: new TextStyle(color: Colors.white),
                            ),
                            new Radio(
                              value: 2,
                              groupValue: _radioValue,
                              activeColor: Colors.white,
                              onChanged: _handleRadioValueChange,
                            ),
                            new Text(
                              'Snacks',
                              style: new TextStyle(color: Colors.white),
                            ),
                            new Radio(
                              value: 3,
                              groupValue: _radioValue,
                              activeColor: Colors.white,
                              onChanged: _handleRadioValueChange,
                            ),
                            new Text(
                              'Dinner',
                              style: new TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Serving Time",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: 100,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Text(
                                      "9:30 AM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "No of Servings",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ]),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(children: [
                          Row(
                            children: [
                              Text(
                                "Favourite Recipe",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.favorite_border, color: Colors.white),
                            ],
                          ),
                          SizedBox(height: 5),
                          TextField(
                            controller: recipe,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Search recipe...",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              prefixIcon: Image.asset("assets/search.png"),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Container(
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
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(children: [
                          Row(
                            children: [
                              Text(
                                "Assigned to",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          TextField(
                            controller: recipe,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "name of the cook",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              suffixIcon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(children: [
                          Row(
                            children: [
                              Text(
                                "Instructions(if any)",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          TextField(
                            controller: recipe,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Optional",
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 40, horizontal: 20),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PlanRecipe()));
                            },
                            child: Container(
                                width: 120,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white),
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/plan.png"),
                                      Text(
                                        "Plan",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ])),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Flexible(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset("assets/plan.png"),
                                      Text(
                                        "Plan & Repeat",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ]),
                              )),
                        ],
                      )
                    ],
                  ),
                ))));
  }
}
