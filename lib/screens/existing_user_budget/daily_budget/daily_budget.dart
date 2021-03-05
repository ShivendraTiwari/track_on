import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:track_on_app_flutter/screens/existing_user_budget/weekly_budget/weekly_budget.dart';
import 'package:track_on_app_flutter/screens/existing_user_budget/yearly_budget/monthly_budget.dart';
import 'package:track_on_app_flutter/screens/recipe_category/category/recipe_category.dart';
import 'package:track_on_app_flutter/screens/task/task__calendar/task_calendar.dart';
import 'package:track_on_app_flutter/screens/transaction/my_transaction/my_transaction.dart';

enum LegendShape { Circle, Rectangle }

class DailyBudget extends StatefulWidget {
  @override
  _DailyBudgetState createState() => _DailyBudgetState();
}

class _DailyBudgetState extends State<DailyBudget> {
  static const color = const Color(0xffb23323F);
  static const borderColor = const Color(0xffb233340);
  static const borderColor2 = const Color(0xffb517C95);
  static const boxColor = const Color(0xffb52687A);
  CalendarController _calendarController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _calendarController = CalendarController();
  }

  Map<String, double> dataMap = {
    "Dine Out": 5,
    "Entertainment": 3,
    "Travel": 2,
    "Grocery": 2,
  };
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  ChartType _chartType = ChartType.disc;
  bool _showCenterText = true;
  double _ringStrokeWidth = 32;
  double _chartLegendSpacing = 32;

  bool _showLegendsInRow = false;
  bool _showLegends = true;

  bool _showChartValueBackground = true;
  bool _showChartValues = true;
  bool _showChartValuesInPercentage = false;
  bool _showChartValuesOutside = false;

  LegendShape _legendShape = LegendShape.Circle;
  LegendPosition _legendPosition = LegendPosition.right;

  int key = 0;

  @override
  Widget build(BuildContext context) {
    final chart = PieChart(
      key: ValueKey(key),
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: _chartLegendSpacing,
      // chartRadius: MediaQuery.of(context).size.width / 3.2 > 300
      //     ? 300
      //     : MediaQuery.of(context).size.width / 3.2,

      chartRadius: 300,
      colorList: colorList,
      initialAngleInDegree: 0,
      chartType: _chartType,
      centerText: _showCenterText ? "Total Budget Expense" : null,
      legendOptions: LegendOptions(
        showLegendsInRow: _showLegendsInRow,
        legendPosition: _legendPosition,
        showLegends: _showLegends,
        legendShape: _legendShape == LegendShape.Circle
            ? BoxShape.circle
            : BoxShape.rectangle,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: _showChartValueBackground,
        showChartValues: _showChartValues,
        showChartValuesInPercentage: _showChartValuesInPercentage,
        showChartValuesOutside: _showChartValuesOutside,
      ),
      ringStrokeWidth: _ringStrokeWidth,
    );
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: color,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                //padding: EdgeInsets.only(left: 20, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DailyBudget()));
                              },
                              child: Container(
                                height: 30,
                                width: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white),
                                ),
                                child: Text(
                                  "Daily",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WeeklyBudget()));
                              },
                              child: Text(
                                "Weekly",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MonthlyBudget()));
                              },
                              child: Text(
                                "Monthly",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Expanded(child: Container()),
                            Card(
                              elevation: 5,
                              color: borderColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: borderColor)),
                              child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: borderColor,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: borderColor),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      // SizedBox(width: 2),
                                      Text("January Budget",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 8)),
                                      Icon(Icons.arrow_drop_down,
                                          color: Colors.white)
                                    ],
                                  )),
                            ),
                            SizedBox(width: 5),
                            Flexible(child: CircleAvatar()),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        //  height:300,
                        child: LayoutBuilder(
                          builder: (_, constraints) {
                            return Container(
                              child: chart,
                              margin: EdgeInsets.symmetric(
                                vertical: 32,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 30),
                      Text("My Transaction",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 20),
                      Container(
                          height: 100,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 7,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  width: 100,
                                  margin: EdgeInsets.only(left: 20),
                                  decoration: BoxDecoration(
                                      color: borderColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: borderColor2),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white,
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0, 0.5),
                                        )
                                      ]),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "12%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Image.asset("assets/shop.png"),
                                      Text(
                                        "Gardening",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                );
                              })),
                      SizedBox(height: 50),
                      Text("My Reminders",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              height: 120,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: borderColor2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 0.1),
                                    )
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Pay",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text("Electricity Bill",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                            color: boxColor,
                                            width: 20,
                                            height: 30,
                                            alignment: Alignment.center,
                                            child: Text("1",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                        SizedBox(width: 2),
                                        Container(
                                            color: boxColor,
                                            width: 20,
                                            height: 30,
                                            alignment: Alignment.center,
                                            child: Text("2",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                      ]),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        CircleAvatar(
                                            backgroundColor: boxColor,
                                            child:
                                                Image.asset("assets/bell.png")),
                                        SizedBox(width: 10),
                                        Column(
                                          children: [
                                            Text(
                                              "Days Remaining ",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Image.asset(
                                                    "assets/snooze.png"),
                                                Text("Snooze On",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ],
                                            )
                                          ],
                                        )
                                      ]),
                                ],
                              )),
                          Container(
                              height: 120,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: borderColor2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 0.1),
                                    )
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Get Car Service",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                            color: boxColor,
                                            width: 20,
                                            height: 30,
                                            alignment: Alignment.center,
                                            child: Text("1",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                        SizedBox(width: 2),
                                        Container(
                                            color: boxColor,
                                            width: 20,
                                            height: 30,
                                            alignment: Alignment.center,
                                            child: Text("2",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                      ]),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        CircleAvatar(
                                            backgroundColor: boxColor,
                                            child:
                                                Image.asset("assets/bell.png")),
                                        SizedBox(width: 10),
                                        Column(
                                          children: [
                                            Text(
                                              "Days Remaining",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                    "assets/snooze.png"),
                                                Text("Snooze On",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ],
                                            )
                                          ],
                                        )
                                      ]),
                                ],
                              )),
                          SizedBox(height: 20),
                        ],
                      ),
                      SizedBox(height: 40),
                      Card(
                        elevation: 5,
                        shadowColor: Colors.white,
                        margin:
                            EdgeInsets.only(left: 70, right: 70, bottom: 30),
                        color: color,
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
                                            builder: (context) =>
                                                MyTransaction()));
                                  },
                                  child: Image.asset(
                                      "assets/transaction_icon.png"),
                                ),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TaskCalendar()));
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
                      )
                    ],
                  ),
                ))));
  }
}
