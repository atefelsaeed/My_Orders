import 'package:flutter/material.dart';

import 'cash_pay_screen.dart';
import 'credit_pay_screen.dart';

class CheckOutPaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Check out',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 23),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'Payment',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
                  ),
                ),
                SizedBox(height: 10,),
                TabBar(
                    tabs: [
                  Tab(
                    child: Row(

                      children: [
                        Icon(
                          Icons.payment,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Master Card',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                      mainAxisSize: MainAxisSize.min,
                    ),
                  ),
                  Tab(
                    child: Row(

                      children: [
                        Icon(
                          Icons.payment,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Cash',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                      mainAxisSize: MainAxisSize.min,
                    ),
                  ),

                ]),
                Container(
                  width: (MediaQuery.of(context).size.width) - 20,
                  height: MediaQuery.of(context).size.height*2/3,
                  child: TabBarView(children: [

                    CreditPayScreen(),
                    CashPayScreen(),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
