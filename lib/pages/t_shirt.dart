// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, must_be_immutable, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/checkout.dart';
import 'package:flutter_application_2/pages/details_screen.dart';
import 'package:flutter_application_2/pages/login.dart';
import 'package:flutter_application_2/provider/cart.dart';
import 'package:flutter_application_2/shared/appbar.dart';
import 'package:flutter_application_2/shared/constants.dart';
import 'package:flutter_application_2/model/item.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/img/img3.png"),
                            fit: BoxFit.cover)),
                    accountName: Text(
                      "Mahmoud ali",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    accountEmail: Text(
                      "mahmoudali123@gmail.com",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    currentAccountPictureSize: Size.square(99),
                    currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/img/mahmoud.png"),
                    ),
                  ),
                  ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                  ListTile(
                    title: Text("my products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chekout()));
                    },
                  ),
                  ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help_center),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Developed by Mahmoudali @2023",
                    style: TextStyle(fontSize: 15),
                  ))
            ],
          ),
        ),
        appBar: AppBar(
          title: Consumer<Cart>(builder: ((context, tastt, child) {
            return Text("${tastt.myname}");
          })),
          backgroundColor: scondry,
          actions: [
            ProductsAndPrice(),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int indext) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details(product: items[indext])));
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
                  footer: GridTileBar(
                    trailing: IconButton(
                      color: Color.fromRGBO(255, 62, 94, 70),
                      onPressed: () {
                        cartt.add(items[indext]);
                      },
                      icon: Icon(Icons.add),
                    ),
                    leading: Text("\$  ${items[indext].price}"),
                    title: Text(""),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
