import 'package:flutter/material.dart';
import 'package:lab4/category.dart';

class Utils {
  static List<Category> getMockedCategory() {
    return [
      Category(
          name: "Item Name 1",
          price: 9000,
          imgName: "assets/Chair1",
          subCategories: []),
      Category(
          name: "Item Name 2",
          price: 10000,
          imgName: "assets/Chair2",
          subCategories: []),
      Category(
          name: "Item Name 3",
          price: 3000,
          imgName: "assets/Chair3",
          subCategories: []),
      Category(
          name: "Item Name 4",
          price: 1000,
          imgName: "assets/Chair4",
          subCategories: []),
      Category(
          name: "Item Name 5",
          price: 10000,
          imgName: "assets/Chair2",
          subCategories: []),
      Category(
          name: "Item Name 6",
          price: 7000,
          imgName: "assets/Chair1",
          subCategories: []),
      Category(
          name: "Item Name 7",
          price: 6000,
          imgName: "assets/Chair4",
          subCategories: []),
      Category(
          name: "Item Name 8",
          price: 12000,
          imgName: "assets/Chair1",
          subCategories: []),
      Category(
          name: "Item Name 9",
          price: 2000,
          imgName: "assets/Chair3",
          subCategories: []),
      Category(
          name: "Item Name 10",
          price: 5000,
          imgName: "assets/Chair4",
          subCategories: []),
      Category(
          name: "Item Name 11",
          price: 6500,
          imgName: "assets/Chair3",
          subCategories: []),
    ];
  }
}
