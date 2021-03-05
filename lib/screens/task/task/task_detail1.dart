import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/recipe_category/category/recipe_category.dart';
import 'package:track_on_app_flutter/screens/task/task/task_detail2.dart';
import 'package:track_on_app_flutter/screens/task/task__calendar/task_calendar.dart';
import 'package:track_on_app_flutter/screens/transaction/my_transaction/my_transaction.dart';

class TaskOneDetail extends StatefulWidget {
  @override
  _TaskDetailState createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskOneDetail> {
  TextEditingController title = new TextEditingController();
  TextEditingController start = new TextEditingController();
  TextEditingController end = new TextEditingController();
  TextEditingController assigned = new TextEditingController();
  TextEditingController details = new TextEditingController();
  static const color = const Color(0xffb23323F);
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
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(height: 100),
                      Container(
                          padding: EdgeInsets.only(right: 20),
                          alignment: Alignment.centerRight,
                          child: CircleAvatar()),
                      Text(
                        "Task",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(height: 50),
                      Container(
                          padding: EdgeInsets.only(left: 20, right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Title",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 7),
                              Material(
                                elevation:5,
                                shadowColor: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                child: TextField(
                                    controller: title,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        enabledBorder: new OutlineInputBorder(
                                            // borderRadius:
                                            //     BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                            )),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        filled: true,
                                        fillColor: color,
                                        hintText: "Add title",
                                        hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15))),
                              ),
                              SizedBox(height: 40),
                              Row(
                                children: [
                                  Text(
                                    "Start",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Flexible(
                                    child: Material(
                                      elevation:5,
                                      shadowColor: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      child: TextField(
                                          controller: start,
                                          style: TextStyle(color: Colors.white),
                                          decoration: InputDecoration(
                                            enabledBorder: new OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                )),
                                            contentPadding: EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 20),
                                            filled: true,
                                            fillColor: color,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "End",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Flexible(
                                    child: Material(
                                      elevation:5,
                                      shadowColor: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      child: TextField(
                                          style: TextStyle(color: Colors.white),
                                          controller: end,
                                          decoration: InputDecoration(
                                            enabledBorder: new OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                )),
                                            contentPadding: EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 20),
                                            filled: true,
                                            fillColor: color,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              Text(
                                "Assigned to",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 7),
                              Material(
                                elevation:5,
                                shadowColor: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                child: TextField(
                                    controller: assigned,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      enabledBorder: new OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          )),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 20),
                                      filled: true,
                                      fillColor: color,
                                    )),
                              ),
                              SizedBox(height: 40),
                              Text(
                                "Details",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 7),
                              Material(
                                elevation:5,
                                shadowColor: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                child: TextField(
                                    controller: details,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      enabledBorder: new OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          )),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 25, horizontal: 20),
                                      filled: true,
                                      fillColor: color,
                                    )),
                              ),
                              SizedBox(height: 40),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Snooze",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Container(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          new Radio(
                                            value: 0,
                                            groupValue: _radioValue,
                                            activeColor: Colors.white,
                                            onChanged: _handleRadioValueChange,
                                          ),
                                          new Text(
                                            'No Alert',
                                            style: new TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          new Radio(
                                            value: 1,
                                            groupValue: _radioValue,
                                            activeColor: Colors.white,
                                            onChanged: _handleRadioValueChange,
                                          ),
                                          new Text(
                                            '15 min before',
                                            style: new TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          new Radio(
                                            value: 2,
                                            groupValue: _radioValue,
                                            activeColor: Colors.white,
                                            onChanged: _handleRadioValueChange,
                                          ),
                                          new Text(
                                            '1 hr before ',
                                            style: new TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          new Radio(
                                            value: 3,
                                            groupValue: _radioValue,
                                            activeColor: Colors.white,
                                            onChanged: _handleRadioValueChange,
                                          ),
                                          new Text(
                                            '1 day before',
                                            style: new TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          new Radio(
                                            value: 4,
                                            groupValue: _radioValue,
                                            activeColor: Colors.white,
                                            onChanged: _handleRadioValueChange,
                                          ),
                                          new Text(
                                            '7 days before',
                                            style: new TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          new Radio(
                                            value: 5,
                                            groupValue: _radioValue,
                                            activeColor: Colors.white,
                                            onChanged: _handleRadioValueChange,
                                          ),
                                          new Text(
                                            'Customize',
                                            style: new TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                              SizedBox(height: 10),
                              Container(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Repeat",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                              SizedBox(height: 40),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TaskSecondDetail()));
                                    },
                                    child: Container(
                                        width: 150,
                                        height: 45,
                                        margin: EdgeInsets.only(bottom: 20),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: color,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.grey),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset("assets/save.png"),
                                            SizedBox(width: 5),
                                            Text("Save",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 17))
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(height: 50),
                              Card(
                                elevation: 5,
                                shadowColor: Colors.white,
                                margin: EdgeInsets.only(
                                    left: 30, right: 30, bottom: 30),
                                color: color,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: BorderSide(color: Colors.grey)),
                                child: Container(
                                  height: 65,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
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
                                            child:
                                                Image.asset("assets/list.png")),
                                        InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          RecipeCategory()));
                                            },
                                            child:
                                                Image.asset("assets/food.png")),
                                      ]),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ))));
  }
}
