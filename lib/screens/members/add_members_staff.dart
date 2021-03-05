import 'package:flutter/material.dart';

class AddMembersStaff extends StatefulWidget {
  @override
  _AddMembersStaffState createState() => _AddMembersStaffState();
}

class _AddMembersStaffState extends State<AddMembersStaff> {
  TextEditingController mobile = new TextEditingController();
  TextEditingController name = new TextEditingController();
  static const color = const Color(0xffb23323F);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                height: MediaQuery.of(context).size.height,
                color: color,
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
                                    spreadRadius: 1,
                                    blurRadius: 15,
                                    offset: Offset(5, 4),
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
                                    spreadRadius: 1,
                                    blurRadius: 15,
                                    offset: Offset(5, 4),
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
                                    offset: Offset(5, 4),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 35),
                      child: TextField(
                          controller: mobile,
                          decoration: InputDecoration(
                              enabledBorder: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  )),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 25, horizontal: 20),
                              filled: true,
                              fillColor: Colors.black,
                              hintText: "Mobile Number",
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15))),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 35),
                      child: Container(
                        child: TextField(
                            controller: mobile,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 25, horizontal: 20),
                                filled: true,
                                fillColor: Colors.black,
                                hintText: "Name",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15))),
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height,
                            padding: EdgeInsets.only(left: 25, right: 25),
                            child: GridView.builder(
                                itemCount: 1,
                                shrinkWrap: true,
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 1.5,
                                  crossAxisSpacing: 0,
                                  mainAxisSpacing: 0,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return
                                    //InkWell(
                                    // onTap: () {
                                    //   Navigator.push(
                                    //       context,
                                    //       MaterialPageRoute(
                                    //           builder: (context) => SubCategories()));
                                    // },
                                    Card(
                                      elevation: 6,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      margin:
                                      EdgeInsets.only(left: 20, right: 20, top: 20),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: color,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white.withOpacity(0.3),
                                                spreadRadius: 5,
                                                blurRadius: 10,
                                                offset: Offset(
                                                    0, 3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(Icons.add, color: Colors.white),
                                              // Text(
                                              //   "Kitchen Staff",
                                              //   textAlign: TextAlign.center,
                                              //   style: TextStyle(
                                              //       color: Colors.white,
                                              //       fontSize: 13,
                                              //       fontWeight: FontWeight.w400),
                                              // ),
                                              //Image.asset("assets/food2.png"),
                                            ],
                                          )),
                                    );
                                  //  );
                                }),
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            margin: EdgeInsets.only(bottom: 20),
                            decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.3),
                                  spreadRadius: 3,
                                  blurRadius: 15,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: FlatButton(
                                child: Text(
                                  "Invite",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
