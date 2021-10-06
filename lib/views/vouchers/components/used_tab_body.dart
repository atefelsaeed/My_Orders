import 'package:flutter/material.dart';
import 'package:my_order_app_v1/views/vouchers/widgets/item_used_voucher.dart';

class UsedTabBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemBuilder: (context, index) => ItemUsedProduct(index: index),
        separatorBuilder: (context, index) => Divider(),
        itemCount: 4,
      ),
    );
  }
}
