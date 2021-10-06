import 'package:flutter/material.dart';
import 'package:my_order_app_v1/views/vouchers/widgets/item_expired_voucher.dart';


class ExpiredTabBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemBuilder:(context, index)=> ItemExpiredVoucher(index:index),
        separatorBuilder:(context, index)=>  Divider(),
        itemCount: 5,
      ),
    );
  }
}
