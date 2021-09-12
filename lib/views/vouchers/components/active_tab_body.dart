import 'package:flutter/material.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

class ActiveTabBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.local_offer,size: 80,),
          heightSizedBox(10),
          Text(
            'No Vouchers \n available',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          heightSizedBox(10),
          Text('You can get vouchers by\n redeeming your rewards\n points',
              maxLines: 3, style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
