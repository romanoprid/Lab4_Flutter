import 'package:flutter/material.dart';
import 'package:lab4/category.dart';

class Utils {
  static List<Category> getMockedCategory() {
    return [
      Category(
          icon: Icon(Icons.ac_unit),
          name: "Item Name",
          price: 9000,
          imgName: "assets/Chair1",
          subCategories: []),
      Category(
          icon: Icon(Icons.ac_unit),
          name: "Item Name",
          price: 10000,
          imgName: "assets/Chair2",
          subCategories: []),
      Category(
          icon: Icon(Icons.ac_unit),
          name: "Item Name",
          price: 3000,
          imgName: "assets/Chair3",
          subCategories: []),
      Category(
          icon: Icon(Icons.ac_unit),
          name: "Item Name",
          price: 1000,
          imgName: "assets/Chair4",
          subCategories: []),
    ];
  }
}
