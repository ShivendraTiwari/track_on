import 'package:flutter/material.dart';

import 'add_new _member.dart';

class AddMembers1 extends StatefulWidget {
  @override
  _AddMembers1State createState() => _AddMembers1State();
}

class _AddMembers1State extends State<AddMembers1> {
  static const color = const Color(0xffb23323F);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: color,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                        height: 300,
                        alignment: Alignment.center,
                        child: Text(
                          "Add Members",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/member1.png"),
                                Text(
                                  "Family",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                )
                              ],
                            )),
                        Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/member2.png"),
                                Text(
                                  "Member",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                )
                              ],
                            )),
                        Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 1,
                                    blurRadius: 15,
                                    offset: Offset(0, 3),
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/member3.png"),
                                Text(
                                  "Staff",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                )
                              ],
                            )),
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: new Border.all(
                                      color: Colors.white,
                                      width: 1.0,
                                    )),
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.transparent,
                                  child: Image.asset("assets/user.png"),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "XYZ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Row(
                            children: [
                              Image.asset("assets/user.png"),
                              Icon(Icons.arrow_right_alt, color: Colors.white)
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddNewMember()));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddNewMember()));
                          },
                          child: Text(
                            "+Add New Member",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          )),
                    )
                  ],
                ))));
  }
}
