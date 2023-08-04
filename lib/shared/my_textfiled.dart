// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextFild extends StatelessWidget {
  final TextInputType? textInputType;
  final bool ispassword;
  final String hinttext;
  MyTextFild(
      {super.key,
      required this.hinttext,
      required this.ispassword,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: ispassword,
      decoration: InputDecoration(
          hintText: hinttext,
          //to delete borders
          enabledBorder:
              OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          filled: true,
          contentPadding: EdgeInsets.all(8)),
    );
  }
}
