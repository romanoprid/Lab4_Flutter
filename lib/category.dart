import "package:flutter/material.dart";

class Category {
  String name;
  int price;
  Icon icon;
  String imgName;
  List<Category> subCategories;
  Category({
    required this.icon,
    required this.name,
    required this.price,
    required this.imgName,
    required this.subCategories,
  });
}
