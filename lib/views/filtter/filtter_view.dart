import 'package:flutter/material.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

import 'components/filter_item.dart';

class FilterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar('cuisines'),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Popular filter',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Wrap(
              children: [
                filterItem('shawerma'),
                filterItem('soup'),
                filterItem('thai'),
                filterItem('warps'),
                filterItem('street food'),
                filterItem('shawerma'),
                filterItem('soup'),
                filterItem('thai'),
                filterItem('warps'),
                filterItem('street food'),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: defaultButton(
                function: () {},
                radius: 10,
                text: 'Apply',
              ),
            ),
            heightSizedBox(50),
          ],
        ),
      ),
    );
  }
}
