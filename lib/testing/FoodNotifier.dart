import 'dart:collection';

//import 'package:atom/models/courseSection.dart';
import 'package:flutter/cupertino.dart';

class FoodNotifier with ChangeNotifier {
  List<String> _foodList = [];
  String _currentFood;

  UnmodifiableListView<String> get foodList => UnmodifiableListView(_foodList);

  String get currentFood => _currentFood;

  set foodList(List<String> foodList) {
    _foodList = foodList;
    notifyListeners();
  }

  set currentFood(String food) {
    _currentFood = food;
    notifyListeners();
  }

  addFood(String food) {
    _foodList.insert(0, food);
    notifyListeners();
  }
}