// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/item.dart';
import 'package:flutter_application_2/provider/cart.dart';
import 'package:flutter_application_2/shared/appbar.dart';
import 'package:flutter_application_2/shared/constants.dart';
import 'package:provider/provider.dart';

class Chekout extends StatelessWidget {
  const Chekout({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Consumer<Cart>(builder: ((context, tastt, child) {
          return Text("${tastt.mycheckout}");
        })),
        backgroundColor: scondry,
        actions: [
          ProductsAndPrice(),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
                height: 500,
                child: ListView.builder(
                    padding: EdgeInsets.all(8),
                    itemCount: cartt.selectedProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          subtitle: Text(
                              "${cartt.selectedProducts[index].price} - ${cartt.selectedProducts[index].location}"),
                          leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                  cartt.selectedProducts[index].imgPath)),
                          title: Text(cartt.selectedProducts[index].name),
                          trailing: IconButton(
                            onPressed: () {
                              cartt.remove(cartt.selectedProducts[index]);
                            },
                            icon: Icon(Icons.remove),
                          ),
                        ),
                      );
                    })),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "pay \$${cartt.price}",
              style: TextStyle(fontSize: 19),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(primary),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)))),
          ),
        ],
      ),
    );
  }
}
