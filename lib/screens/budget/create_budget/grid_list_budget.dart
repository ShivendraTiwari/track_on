import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Choice {
  const Choice(
      {this.title, this.image, this.budget, this.linearPercentIndicator});

  final String title;
  final Image image;
  final String budget;
  final LinearPercentIndicator linearPercentIndicator;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Food', budget: "8000"),
  const Choice(title: 'Travel', budget: "10000"),
  const Choice(title: 'Electronics', budget: "12000"),
  const Choice(title: 'Housekeeping', budget: "15000"),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Container(
     //height: 130,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Card(
          color: Colors.black,
          elevation: 5,
          shadowColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(child: Container()),
                  Text(choice.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  Expanded(child: Container()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/rupee_icon.png",
                        color: Colors.white,
                      ),
                      Text(
                        choice.budget,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: new LinearPercentIndicator(
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
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.blue,
                      progressColor: Colors.white,
                    ),
                  )
                ]),
          )),
    );
  }
}
