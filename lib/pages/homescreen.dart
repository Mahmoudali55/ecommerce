// ignore_for_file: unused_import, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/item.dart';
import 'package:flutter_application_2/pages/details_screen.dart';
import 'package:flutter_application_2/provider/cart.dart';
import 'package:flutter_application_2/shared/appbar.dart';
import 'package:flutter_application_2/shared/constants.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Consumer<Cart>(builder: ((context, tastt, child) {
          return Text("${tastt.myhome}");
        })),
        backgroundColor: scondry,
        actions: [
          ProductsAndPrice(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10),
          itemCount: 4,
          itemBuilder: (BuildContext context, int indext) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Details(product: items[indext])));
              },
              child: GridTile(
                child: Stack(children: [
                  Positioned(
                      bottom: 5,
                      right: 5,
                      top: 5,
                      left: 5,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(items[indext].imgPath))),
                ]),
                footer: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "${scan[indext].text}",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
