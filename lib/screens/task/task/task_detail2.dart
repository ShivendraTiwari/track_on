
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskSecondDetail extends StatefulWidget {
  @override
  _TaskSecondDetailState createState() => _TaskSecondDetailState();
}

class _TaskSecondDetailState extends State<TaskSecondDetail> {
  TextEditingController title = new TextEditingController();
  TextEditingController start = new TextEditingController();
  TextEditingController end = new TextEditingController();
  TextEditingController details = new TextEditingController();
  static const color = const Color(0xffb23323F);
  int _radioValue = 0;

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
                                elevation: 5,
                                shadowColor: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                child: TextField(
                                    controller: title,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        enabledBorder: new OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                      elevation: 5,
                                      shadowColor: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      child: TextField(
                                          controller: start,
                                          style: TextStyle(color: Colors.white),
                                          decoration: InputDecoration(
                                            enabledBorder:
                                                new OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide: BorderSide(
                                                      color: Colors.white,
                                                    )),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 5,
                                                    horizontal: 20),
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
                                      elevation: 5,
                                      shadowColor: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      child: TextField(
                                          style: TextStyle(color: Colors.white),
                                          controller: end,
                                          decoration: InputDecoration(
                                            enabledBorder:
                                                new OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide: BorderSide(
                                                      color: Colors.white,
                                                    )),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 5,
                                                    horizontal: 20),
                                            filled: true,
                                            fillColor: color,
                                          )),
                                    ),
                                  ),
                                ],
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
                                elevation: 5,
                                shadowColor: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                child: TextField(
                                    controller: details,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      enabledBorder: new OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          )),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 25, horizontal: 20),
                                      filled: true,
                                      fillColor: color,
                                    )),
                              ),
                              SizedBox(height: 30),
                              Material(
                                elevation: 5,
                                shadowColor: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                    height: 62,
                                    decoration: BoxDecoration(
                                        color: color,
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                            Border.all(color: Colors.white)),
                                    child: Row(
                                      children: [
                                        SizedBox(width:5),
                                        Text("Attachments(optional)",style: TextStyle(color:Colors.white),),
                                        Expanded(child:Container()),

                                          InkWell(
                                              onTap:()async {
                                                // Navigator.push(context,MaterialPageRoute(builder: (context)=>))
                                                // FilePickerResult result = await FilePicker.platform.pickFiles(
                                                //   type: FileType.custom,
                                                //   allowedExtensions: ['jpg', 'pdf', 'doc'],
                                                // );
                                              },
                                              child: Image.asset("assets/attach1.png")),
                                          SizedBox(width:10),
                                          Padding(
                                            padding: const EdgeInsets.only(right:10),
                                            child: Image.asset("assets/attach2.png"),
                                          ),
                                      ],
                                    )),
                              ),
                              SizedBox(height: 100),
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
                                        width: 200,
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
                                            Text("Mark Complete",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.grey.shade400,
                                                    fontSize: 17,
                                                    letterSpacing: 1))
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ],
                  ),
                ))));
  }
}
