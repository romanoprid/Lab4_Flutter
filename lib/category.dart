class Category {
  String name;
  int price;
  String imgName;
  List<Category> subCategories;

  Category({
    required this.name,
    required this.price,
    required this.imgName,
    required this.subCategories,
  });
}
