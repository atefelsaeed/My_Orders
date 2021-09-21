import 'package:flutter/material.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer.dart';

class UserDetailsScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget defaultMaterialButton({
    required String buttonName,
    required Function buttonFuncation,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: MaterialButton(
        onPressed: () {
          buttonFuncation();
        },
        color: Color(0xffEF4760),
        minWidth: double.infinity,
        height: 45,
        child: Text(
          buttonName,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget defaultInfoTextFieldItem(
      {required TextEditingController contorller,
      required String labelText,
      bool isPassword = false,
      bool isClickable = true,
      IconData? prefixIcon,
      IconData? suffixIcon,
      ValueChanged<String>? onChange,
      ValueChanged<String>? onsubmitt,
      VoidCallback? suffixfunc,
      TextInputType txtType = TextInputType.text,
      GestureTapCallback? onTap,
      @required String? fieldName}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          fieldName!,
          style: TextStyle(fontSize: 20),
        ),
        TextFormField(
          enabled: isClickable,
          onTap: onTap,
          keyboardType: txtType,
          controller: contorller,
          decoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(suffixIcon),
              onPressed: suffixfunc,
            ),
          ),
          obscureText: isPassword,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar:defaultAppBar('User Details'),
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
                defaultInfoTextFieldItem(
                    contorller: nameController,
                    labelText: 'Ahmed Mohamed',
                    fieldName: 'Full Name'),
                defaultInfoTextFieldItem(
                    contorller: emailController,
                    labelText: 'User @ yahoo.com',
                    fieldName: 'Email'),
                defaultInfoTextFieldItem(
                    contorller: phoneController,
                    labelText: '',
                    fieldName: 'Phone Number'),
                defaultInfoTextFieldItem(
                    contorller: nameController,
                    labelText: '15. Nour Street',
                    fieldName: 'Address',
                    suffixIcon: Icons.location_on),
                defaultInfoTextFieldItem(
                    contorller: nameController,
                    labelText: '122222233',
                    fieldName: 'Password',
                    isPassword: true,
                    suffixIcon: Icons.edit),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: defaultMaterialButton(
                      buttonName: 'Edit', buttonFuncation: () {}),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
