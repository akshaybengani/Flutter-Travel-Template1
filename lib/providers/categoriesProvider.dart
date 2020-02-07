import 'package:flutter/foundation.dart';
import 'package:travel_brandzgarage/models/placecategory.dart';

class CategoriesProvider with ChangeNotifier {
  List<PlaceCategory> _items = [
    PlaceCategory(
        catID: "c1",
        catIcon: "☀️",
        catName: "All",
        currentSelected: true),
    PlaceCategory(
        catID: "c2",
        catIcon: "🍔",
        catName: "Food",
        currentSelected: false),
    PlaceCategory(
        catID: "c3",
        catIcon: "💪",
        catName: "Sport",
        currentSelected: false),
    PlaceCategory(
        catID: "c4",
        catIcon: "🎸",
        catName: "Music",
        currentSelected: false),
    PlaceCategory(
        catID: "c5",
        catIcon: "🏺",
        catName: "History",
        currentSelected: false),
    PlaceCategory(
        catID: "c6",
        catIcon: "📱",
        catName: "Tech",
        currentSelected: false),
  ];

  List<PlaceCategory> get items {
    return _items;
  }

  int currentSelectedItem = 0;
  int previousSelectedItem = 0;

  void makeItSelected(int index) {
    _items[index].currentSelected = true;
    currentSelectedItem = index;
    _items[previousSelectedItem].currentSelected = false;
    previousSelectedItem = index;
    notifyListeners();
  }
}
