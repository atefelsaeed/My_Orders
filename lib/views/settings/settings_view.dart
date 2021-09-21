import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/home/cubits/home_cubit.dart';
import 'package:my_order_app_v1/views/home/states/home_states.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(builder: (context, state) {
      HomeCubit cubit = HomeCubit.get(context);
      return Scaffold(
        appBar: defaultAppBar(
          LocaleKeys.settings.tr(),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(LocaleKeys.notifications.tr()),
                    Spacer(),
                    Switch(
                      value: cubit.notificationSwitchButton,
                      onChanged: cubit.onSwitchNotificationButton,
                      activeColor: defaultColor,
                    ),
                  ],
                ),
              ),
              Divider(
                color: defaultColor,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(LocaleKeys.language.tr()),
                    Spacer(),
                    DropdownButton(
                      value: cubit.dropdownValue,
                      icon: Icon(Icons.edit),
                      items: cubit.languages.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        cubit.chooseLanguage(newValue!);
                        print('${cubit.dropdownValue}');
                        cubit.dropdownValue == 'English'
                            ? context.setLocale(Locale('en'))
                            : context.setLocale(Locale('ar'));
                      },
                    ),
                  ],
                ),
              ),
              Divider(
                color: defaultColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(LocaleKeys.country.tr()),
                    Spacer(),
                    DropdownButton(
                      value: cubit.countryDropdownValue,
                      icon: Icon(Icons.edit),
                      items: cubit.country.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
                      }).toList(),
                      onChanged: (String? newValue) {
                        cubit.chooseCountry(newValue);
                      },
                    ),
                  ],
                ),
              ),
              Divider(
                color: defaultColor,
              ),
            ],
          ),
        ),
      );
    });
  }
}
