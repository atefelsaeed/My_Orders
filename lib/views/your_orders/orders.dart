import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer.dart';

import 'old_orders_screen.dart';
import 'recents_orders_screen.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  List<Widget> body = [OldOrders(), RecentsOrders()];
  bool button1IsSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: defaultAppBar('Orders'),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 60,
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      button1IsSelected = !button1IsSelected;
                      setState(() {});
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Old Orders',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ),
                      height: 60,
                      margin: EdgeInsets.only(right: 170),
                      decoration: BoxDecoration(
                          color: button1IsSelected
                              ? Color(0xffEF4760)
                              : Color(0xffE17D72),
                          borderRadius: BorderRadius.circular(25)),
                      width: button1IsSelected
                          ? MediaQuery.of(context).size.width / 1.9
                          : MediaQuery.of(context).size.width / 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      button1IsSelected = !button1IsSelected;
                      setState(() {});
                    },
                    child: Container(
                      child: Center(
                          child: Text(
                        'Recents Orders',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      )),
                      height: 60,
                      margin: EdgeInsets.only(left: 170),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color:
                            button1IsSelected ? secondaryColor : defaultColor,
                      ),
                      width: !button1IsSelected
                          ? MediaQuery.of(context).size.width / 1.9
                          : MediaQuery.of(context).size.width / 2,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              child: body[button1IsSelected ? 0 : 1],
            ))
          ],
        ),
      ),
    );
  }
}
