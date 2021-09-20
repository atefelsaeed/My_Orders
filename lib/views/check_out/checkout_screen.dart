import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

import 'check_out_payment/checkout_payment_screen.dart';

class CheckOutScreen extends StatelessWidget {
  TextEditingController fullName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar('Check out'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                'Full Name',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
              ),
            ),
            TextFormField(
                controller: fullName,
                onFieldSubmitted: (s) {},
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffFB4E68),
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffFB4E68), width: 1),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                'Phone Number',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
              ),
            ),
            TextFormField(
                controller: phoneNumber,
                onFieldSubmitted: (s) {},
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffFB4E68),
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffFB4E68), width: 1),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                'Address',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
              ),
            ),
            TextFormField(
                controller: address,
                onFieldSubmitted: (s) {},
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  suffixIcon: Icon(Icons.location_on),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffFB4E68),
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffFB4E68), width: 1),
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            defaultButton(
              function: () {
                navigateTo(context, CheckOutPaymentScreen());
              },
              text: 'Next',
              icon: Icons.arrow_forward_ios_rounded,
              radius: 15,
              isUpperCase: false,
            ),
          ],
        ),
      ),
    );
  }
}
