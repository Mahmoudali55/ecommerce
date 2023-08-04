import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/item.dart';

class Cart with ChangeNotifier {
  String myname = "T_shirt";
  String mydetails = "Details Screen";
  String mycheckout = "Checkout screen";
  String myhome = "Home screen";
  List selectedProducts = [];
  int price = 0;
  add(Item product) {
    selectedProducts.add(product);

    price += product.price.round();
    notifyListeners();
  }

  remove(Item product) {
    selectedProducts.remove(product);
    price -= product.price.round();
    notifyListeners();
  }
}
