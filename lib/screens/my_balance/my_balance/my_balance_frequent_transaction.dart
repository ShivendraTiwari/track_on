import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/my_balance/frequent_transactions_products_details/frequent_transactions_details.dart';

class MyBalanceTransaction extends StatefulWidget {
  @override
  _MyBalanceTransactionState createState() => _MyBalanceTransactionState();
}

class _MyBalanceTransactionState extends State<MyBalanceTransaction> {
  static const color = const Color(0xffb23323F);
  static const borderColor = const Color(0xffb233340);
  static const borderColor2 = const Color(0xffb517C95);
  static const boxColor = const Color(0xffb52687A);
  static const boxBorderColor = const Color(0xffb707070);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      height: MediaQuery.of(context).size.height,
      color: color,
      child: GridView.builder(
          itemCount: 1,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 6,
          ),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyFrequentTransactions()));
              },
              child: Card(
                elevation: 6,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: boxColor)),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color,
                      border: Border.all(color: boxColor),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.white,
                      //     spreadRadius: 1,
                      //     blurRadius: 2,
                      //     offset:
                      //     Offset(0, 3), // changes position of shadow
                      //   ),
                      // ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Text(
                        //   "DineOut",
                        //   style: TextStyle(
                        //       color: Colors.white, fontWeight: FontWeight.bold),
                        // ),
                        // Image.asset("assets/food2.png"),
                        Icon(Icons.add, color: Colors.white),
                      ],
                    )),
              ),
            );
          }),
    )));
  }
}
