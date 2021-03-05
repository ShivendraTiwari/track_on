import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFrequentTransactions extends StatefulWidget {
  @override
  _MyFrequentTransactionsState createState() => _MyFrequentTransactionsState();
}

class _MyFrequentTransactionsState extends State<MyFrequentTransactions> {
  TextEditingController amount=new TextEditingController();
  static const color = const Color(0xffb23323F);
  static const color2 = const Color(0xffbD5E0E0);
  static const borderColor2 = const Color(0xffb517C95);
  static const textColor = const Color(0xffb707070);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
      child: Container(
          color: color,
          height:MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Row(children:[
                    Expanded(child:Container()),
                    Expanded(child: Text("Grocery",style: TextStyle(color:Colors.white,fontSize: 20),)),
                    CircleAvatar(radius:17),
                    SizedBox(width:10),
                    CircleAvatar()
                  ]),
                ),
                SizedBox(height:30),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left:30),
                  child: Text("Choose Sub-Categories to book transaction",
                    style: TextStyle(color:Colors.grey.shade500),),

                ),
                SizedBox(height:20),
                Container(
                  height:400,
                child:  GridView.builder(
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.7,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 5,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => SubCategories()));
                          },
                          child: Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: color,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset:
                                      Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Dine Out",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Image.asset("assets/food2.png"),
                                  ],
                                )),
                          ),
                        );
                      }),
                ),
                SizedBox(height:50),
                Container(
                  padding:EdgeInsets.only(left:20,right:20),
                  child: Column(children: [
                    TextField(
                      controller: amount,
                      style: TextStyle(color: Colors.white),
                      decoration: new InputDecoration(
                          prefixIcon: Image.asset("assets/rupee_icon.png",color:Colors.white),
                          contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                          enabledBorder:new OutlineInputBorder(
                            borderSide:new  BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                    SizedBox(height:10),
                    TextField(
                      controller: amount,
                      style: TextStyle(color: Colors.white),
                      decoration: new InputDecoration(
                         // hintText: "Name",
                          contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                         enabledBorder:new OutlineInputBorder(
                            borderSide:new  BorderSide(color: Colors.white),
                           borderRadius: BorderRadius.circular(10),
                          ),
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                    SizedBox(height:10),
                    TextField(
                      controller: amount,
                      style: TextStyle(color: Colors.white),
                      decoration: new InputDecoration(
                          hintText: "Attachments (optional)",
                          contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                          enabledBorder:new OutlineInputBorder(
                            borderSide:new  BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10)),
                    ),
                    SizedBox(height:10),
                    TextField(
                      controller: amount,
                      style: TextStyle(color: Colors.white),
                      decoration: new InputDecoration(
                          hintText: "Add notes here,if any",
                          contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                          enabledBorder:new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:new  BorderSide(color: Colors.white),
                          ),
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10)),
                    ),
                  ],),
                ),
                SizedBox(height:30),
                Container(
                  height:50,
                   width:200,
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     border: Border.all(color:Colors.white),
                   ),
                  child:Text("Confirm Payment",style: TextStyle(color:textColor,fontSize: 15,fontWeight: FontWeight.w500))
                )
              ],
            ),
          )),
    ));
  }
}
