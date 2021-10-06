import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
  String? Function()? validate,
  String? label,
  String? hintText,
  IconData? prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        enabled: isClickable,
        onFieldSubmitted: (s) {
          onSubmit!(s);
        },
        validator: (String?value)
        {
           // return value!.isEmpty?"must not null":validate??validate;
          if(value!.isEmpty)
            {
              return "must not empty";
            }
           if(validate!=null){
             return validate();
           }
        },
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          labelText: label,
          prefixIcon: Icon(prefix),
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: () {
                    suffixPressed!();
                  },
                  icon: Icon(
                    suffix,
                  ))
              : null,
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: defaultColor,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: defaultColor, width: 1),
          ),
        ));
