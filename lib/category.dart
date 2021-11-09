import "package:flutter/material.dart";

class Category {
  int id;
  String name;
  int price;
  String imgName;
  List<Category> subCategories;

  Category({
    required this.id,
    required this.name,
    required this.price,
    required this.imgName,
    required this.subCategories,
  });
}
