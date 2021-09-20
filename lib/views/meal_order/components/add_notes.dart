import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

TextEditingController mealController = TextEditingController();

Widget addNotes() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Add notes ...', style: TextStyle(fontWeight: FontWeight.bold),),
      heightSizedBox(5),
      TextFormField(
        maxLines: 4,
        controller: mealController,
        keyboardType: TextInputType.text,
        validator: (s) {},
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          hintText: 'Write any special things you want to do.',
          hintStyle: TextStyle(color: Colors.black38, fontSize: 12),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: defaultColor,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black45, width: 1),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    ],
  );
}
