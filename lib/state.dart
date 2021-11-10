import 'dart:collection';

import 'package:lab4/category.dart';

import 'package:flutter/foundation.dart' as foundation;


class CartModel extends foundation.ChangeNotifier {
  final Set<Category> _items = {};

  UnmodifiableSetView<Category> get items => UnmodifiableSetView(_items);

  void add(Category category) {
    _items.add(category);
    notifyListeners();
  }

  void remove(Category category) {
    _items.remove(category);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
