// ignore_for_file: non_constant_identifier_names, unused_import
import 'package:flutter/material.dart';

class Item {
  String imgPath;
  double price;
  String location;
  String name;
  Item(
      {required this.imgPath,
      required this.name,
      required this.price,
      required this.location});
}

List items = [
  Item(
      name: "product1",
      imgPath: "assets/img/img4.png",
      price: 50.99,
      location: "mohmoud shop mans"),
  Item(
      name: "product2",
      imgPath: "assets/img/img5.png",
      price: 54.99,
      location: "mohmoud shop caira"),
  Item(
      name: "product3",
      imgPath: "assets/img/img6.png",
      price: 60.99,
      location: "mohmoud shop Aswan"),
  Item(
      name: "product4",
      imgPath: "assets/img/img7.png",
      price: 100.99,
      location: "mohmoud shop alex"),
  Item(
      name: "product5",
      imgPath: "assets/img/img8.png",
      price: 57.99,
      location: "mohmoud shop tanta"),
  Item(
      name: "product6",
      imgPath: "assets/img/img9.png",
      price: 20.99,
      location: "mohmoud shop domiat"),
  Item(
      name: "product7",
      imgPath: "assets/img/img10.png",
      price: 52.99,
      location: "mohmoud shop locs"),
  Item(
      name: "product8",
      imgPath: "assets/img/img11.png",
      price: 90.99,
      location: "mohmoud shop ma"),
  Item(
      name: "product9",
      imgPath: "assets/img/img12.png",
      price: 120.99,
      location: "mohmoud shop mans"),
  Item(
      name: "product10",
      imgPath: "assets/img/img4.png",
      price: 128.99,
      location: "mohmoud shop mans"),
  Item(
      name: "product11",
      imgPath: "assets/img/img6.png",
      price: 70.99,
      location: "mohmoud shop mans"),
  Item(
      name: "product12",
      imgPath: "assets/img/img8.png",
      price: 80.99,
      location: "mohmoud shop mans"),
];

class item2 {
  String text;
  String imgPath2;
  item2({required this.text, required this.imgPath2});
}

List scan = [
  item2(text: " T_shirts", imgPath2: "assets/img/img4.png"),
  item2(text: "Sprots shoes", imgPath2: "assets/img/shoes.png"),
  item2(text: "club T_shirts ", imgPath2: "assets/img/img12.png"),
  item2(text: "Sprots supplis ", imgPath2: "assets/img/supplies.png"),
];
