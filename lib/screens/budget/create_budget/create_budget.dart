import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:track_on_app_flutter/screens/budget/api_util/create_budget_api.dart';
import 'package:track_on_app_flutter/screens/recipe_category/category/recipe_category.dart';
import 'package:track_on_app_flutter/screens/transaction/my_transaction/my_transaction.dart';
import '../my_budget.dart';

class CreateBudget extends StatefulWidget {
  @override
  _BudgetState createState() => _BudgetState();
}

class _BudgetState extends State<CreateBudget> {
  TextEditingController searchBox = new TextEditingController();
  static const backgroundColor = const Color(0xffb243441);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CreateBudgetUtil.createBudget(searchBox);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            color: backgroundColor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                        elevation: 10,
                        shadowColor: Colors.white,
                        color: backgroundColor,
                        child: Column(
                          children: [
                            SizedBox(height: 30),
                            Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(top: 25, right: 15),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: Image.asset(""),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Create Your Budget Now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                                Container(
                                    height: 25,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text("2021",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12))),
                                Container(
                                    child: Image.asset("assets/keyboard.png"))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: TextField(
                                controller: searchBox,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    hintText: "Alpha",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 19)),
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: 20),
                  Container(
                      height: 500,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      // child: FutureBuilder(
                      //     future: future2,
                      //     builder: (context, snapshot) {
                      //       if (SelectedCategoriesUtil.data.length != null) {
                      // return
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.8,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemBuilder: (context, int index) {
                          return Container(
                            //height: 130,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Card(
                                color:backgroundColor,
                                elevation: 5,
                                shadowColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        SizedBox(height: 30),
                                        Text("Food",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18)),
                                        Image.asset("assets/food2.png"),
                                        // Expanded(child: Container()),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/rupee_icon.png",
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "8000",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        ClipRRect(
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: LinearPercentIndicator(
                                              width: 140.0,
                                              lineHeight: 14.0,
                                              percent: 0.5,
                                              center: Text(
                                                "50.0%",
                                                style: new TextStyle(
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                              trailing: Icon(Icons.mood),
                                              linearStrokeCap:
                                                  LinearStrokeCap.roundAll,
                                              backgroundColor:
                                                  Colors.black,
                                              progressColor: Colors.white,
                                            ),
                                          ),
                                        )
                                      ]),
                                )),
                          );
                        },
                        itemCount: 4,
                      )
                      // } else {
                      //   return Center(
                      //     child: CupertinoActivityIndicator(
                      //       radius: 30,
                      //     ),
                      //   );
                      // }

                      ),
                  Container(
                    alignment: Alignment.center,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: new Border.all(
                          color: Colors.white,
                          width: 1.0,
                        )),
                    child: InkWell(
                      onTap: () async {
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>));
                        if (await CreateBudgetUtil.createBudget(
                            searchBox.text != null)) {
                          showDialog(
                              context: context,
                              child: new AlertDialog(
                                // title: new Text("My Super title"),
                                content: new Text(
                                    "Congrats!! your Budget has created"),
                              ));
                        } else {
                          showDialog(
                              context: context,
                              child: new AlertDialog(
                                // title: new Text("My Super title"),
                                content:
                                    new Text("Budget can't be left emptied"),
                              ));
                        }
                      },
                      child: Container(
                        child: CircleAvatar(
                            radius: 27,
                            backgroundColor:backgroundColor,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 30,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.white,
                    margin: EdgeInsets.only(
                      left: 40,
                      right: 40,
                    ),
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
                                          builder: (context) => MyBudget()));
                                },
                                child: Image.asset("assets/list.png")),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RecipeCategory()));
                                },
                                child: Image.asset("assets/food.png")),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )));
  }
}
