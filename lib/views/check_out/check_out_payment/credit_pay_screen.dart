import 'package:flutter/material.dart';
import 'package:my_order_app_v1/views/check_out/congratulation/congratulation.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

class CreditPayScreen extends StatelessWidget {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardHolderController = TextEditingController();
  TextEditingController expireDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Card number',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
                controller: cardNumberController,
                onFieldSubmitted: (s) {},
                keyboardType: TextInputType.number,
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
            SizedBox(
              height: 10,
            ),
            Text(
              'Card holder name',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
                controller: cardHolderController,
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
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Expire Date',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: TextFormField(
                          controller: expireDateController,
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
                              borderSide: BorderSide(
                                  color: Color(0xffFB4E68), width: 1),
                            ),
                          )),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'CVV',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: TextFormField(
                          controller: cvvController,
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
                              borderSide: BorderSide(
                                  color: Color(0xffFB4E68), width: 1),
                            ),
                          )),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
                onTap: () {
                  navigateTo(
                    context,
                    CongratulationView(),
                  );
                },
                child: Container(
                  height: 45,
                  width: (MediaQuery.of(context).size.width) - 40,
                  decoration: BoxDecoration(
                      color: Color(0xffFB4E68),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 21),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
