import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

class UsedTabBody extends StatelessWidget {

  Widget card(index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: defaultColor),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Icon(Icons.local_offer_rounded,color: defaultColor,size: 30,),
              Text('30% Discount\n for any order',style: TextStyle(fontSize: 20,color: defaultColor),),
              Spacer(),
              VerticalDivider(color: defaultColor,thickness: 1,),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Get your vouchers',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  heightSizedBox(5),
                  Text('write the code #252545',style: TextStyle(fontSize: 12,color: Colors.grey),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemBuilder:(context, index)=> card(index),
        separatorBuilder:(context, index)=>  Divider(),
        itemCount: 4,
      ),
    );
  }
}
