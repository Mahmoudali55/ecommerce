// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/item.dart';
import 'package:flutter_application_2/provider/cart.dart';
import 'package:flutter_application_2/shared/appbar.dart';
import 'package:flutter_application_2/shared/constants.dart';
import 'package:provider/provider.dart';

class Details extends StatefulWidget {
  Item product;
  Details({required this.product});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<Cart>(builder: ((context, tastt, child) {
          return Text("${tastt.mydetails}");
        })),
        backgroundColor: scondry,
        actions: [
          ProductsAndPrice(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            widget.product.imgPath,
            scale: .1,
          ),
          SizedBox(
            height: 11,
          ),
          Text(
            "\$  ${widget.product.price}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(left: 5),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 129, 129),
                    borderRadius: BorderRadius.circular(4)),
                child: Text(
                  "New",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 28,
                    color: Color.fromARGB(255, 255, 191, 0),
                  ),
                  Icon(
                    Icons.star,
                    size: 28,
                    color: Color.fromARGB(255, 255, 191, 0),
                  ),
                  Icon(
                    Icons.star,
                    size: 28,
                    color: Color.fromARGB(255, 255, 191, 0),
                  ),
                  Icon(
                    Icons.star,
                    size: 28,
                    color: Color.fromARGB(255, 255, 191, 0),
                  ),
                  Icon(
                    Icons.star,
                    size: 28,
                    color: Color.fromARGB(255, 255, 191, 0),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.edit_location,
                    size: 26,
                    color: Color.fromARGB(168, 3, 65, 27),
                  ),
                ],
              ),
              Text(
                widget.product.location,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Details:",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "A T-shirt (also spelled tee shirt),\t or tee for short, is a style of fabric shirt named after the T shape of its body and sleeves. Traditionally, it has short sleeves and a round neckline, known as a crew neck, which lacks a collar. T-shirts are generally made of a stretchy, light, and inexpensive fabric and are easy to clean. The T-shirt evolved from undergarments used in the 19th century and, in the mid-20th century, transitioned from undergarment to general-use casual clothing.",
            style: TextStyle(fontSize: 18),
            maxLines: isShowMore ? 3 : null,
            overflow: TextOverflow.fade,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  isShowMore = !isShowMore;
                });
              },
              child: Text(isShowMore ? "Show more" : "Show less",
                  style: TextStyle(
                    fontSize: 18,
                  )))
        ]),
      ),
    );
  }
}
