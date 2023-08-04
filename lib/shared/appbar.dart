// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/checkout.dart';
import 'package:flutter_application_2/provider/cart.dart';
import 'package:provider/provider.dart';

class ProductsAndPrice extends StatelessWidget {
  const ProductsAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 22,
              child: Container(
                child: Text(
                  "${cartt.selectedProducts.length}",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(211, 164, 255, 193),
                    shape: BoxShape.circle),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chekout()));
                },
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ))
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Text(
            "\$ ${cartt.price}",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        )
      ],
    );
  }
}
