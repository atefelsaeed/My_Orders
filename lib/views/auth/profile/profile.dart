import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/auth/profile/cubit/profile_cubit.dart';
import 'package:my_order_app_v1/views/auth/profile/state/profile_state.dart';

import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/default_text_form_field.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer_view.dart';

class Profile extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: BlocConsumer<ProfileCubit, ProfileStates>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
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
                    SizedBox(
                      height: 30,
                    ),
                    //============name==============
                    Text(
                      LocaleKeys.full_name.tr(),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    defaultFormField(
                      controller: nameController,
                      type: TextInputType.name,
                      validate: () {},
                      hintText: 'Ahmed Mohamed',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //=============email============
                    Text(LocaleKeys.email.tr(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    defaultFormField(
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      validate: () {},
                      label: 'atef@test.com',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(LocaleKeys.phone_number.tr(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    defaultFormField(
                      controller: phoneController,
                      type: TextInputType.phone,
                      validate: () {},
                      hintText: '01023642940',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(LocaleKeys.address.tr(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    defaultFormField(
                      controller: addressController,
                      type: TextInputType.text,
                      validate: () {},
                      hintText: 'Al-Nozha st ,Mansoura',
                      prefix: Icons.location_on,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(LocaleKeys.password.tr(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),

                    TextFormField(
                        obscureText: true,
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        validator: (val) {},
                        decoration: InputDecoration(
                          hintText: 'atefElsaeed',
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          suffixIcon: TextButton(
                            onPressed: () {},
                            child: Text(
                              LocaleKeys.change_password.tr(),
                              style: TextStyle(color: defaultColor),
                            ),
                          ),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: defaultColor,
                              width: 1,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: defaultColor, width: 1),
                          ),
                        )),

                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: defaultButton(
                        text: LocaleKeys.edit.tr(),
                        function: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
