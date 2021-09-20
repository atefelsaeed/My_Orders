import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/default_text_form_field.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer.dart';

class Profile extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: defaultAppBar(
        LocaleKeys.profile.tr(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Ahmed',
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(Icons.edit)
                        ],
                      ),
                    ],
                  ),
                ),
                defaultFormField(
                  controller: nameController,
                  type: TextInputType.name,
                  validate: (val) {},
                  label: 'Ahmed Mohamed',
                  prefix: Icons.person,
                ),
                // defaultInfoTextFieldItem(
                //     contorller: nameController,
                //     labelText: 'Ahmed Mohamed',
                //     fieldName: 'Full Name'),
                // defaultInfoTextFieldItem(
                //     contorller: emailController,
                //     labelText: 'User @ yahoo.com',
                //     fieldName: 'Email'),
                // defaultInfoTextFieldItem(
                //     contorller: phoneController,
                //     labelText: '',
                //     fieldName: 'Phone Number'),
                // defaultInfoTextFieldItem(
                //     contorller: nameController,
                //     labelText: '15. Nour Street',
                //     fieldName: 'Address',
                //     suffixIcon: Icons.location_on),
                // defaultInfoTextFieldItem(
                //     contorller: nameController,
                //     labelText: '122222233',
                //     fieldName: 'Password',
                //     isPassword: true,
                //     suffixIcon: Icons.edit),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: defaultButton(
                    text: 'Edit',
                    function: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
