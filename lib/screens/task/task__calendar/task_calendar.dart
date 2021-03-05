import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:track_on_app_flutter/screens/categories/add_category.dart';
import 'package:track_on_app_flutter/screens/recipe_category/category/recipe_category.dart';
import 'package:track_on_app_flutter/screens/task/task/task_detail1.dart';
import 'package:track_on_app_flutter/screens/transaction/my_transaction/my_transaction.dart';

class TaskCalendar extends StatefulWidget {
  @override
  _TaskCalendarState createState() => _TaskCalendarState();
}

class _TaskCalendarState extends State<TaskCalendar> {
  static const color = const Color(0xffb23323F);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
              height: 150,
              color: color,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 50, right: 20),
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Text("Task",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      )),
                ],
              )),
          Container(
              height: 400,
              child: SfCalendar(
                view: CalendarView.month,
              )),
          SizedBox(height: 35),
          Container(
              color: color,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Tap on the date you want to create the task or tap Add icon",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      )),
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
                                          builder: (context) =>
                                              TaskOneDetail()));
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
                                      backgroundColor: color,
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
                        margin:
                            EdgeInsets.only(left: 40, right: 40, bottom: 30),
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
                      ),
                    ],
                  ),
                ],
              ))
        ]),
      ),
    )));
  }
}
