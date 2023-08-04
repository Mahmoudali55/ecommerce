// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/checkout.dart';
import 'package:flutter_application_2/pages/details_screen.dart';
import 'package:flutter_application_2/pages/homescreen.dart';
import 'package:flutter_application_2/pages/t_shirt.dart';
import 'package:flutter_application_2/pages/login.dart';
import 'package:flutter_application_2/provider/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
