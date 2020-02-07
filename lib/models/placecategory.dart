import 'package:flutter/foundation.dart';

class PlaceCategory {
  final String catID;
  final String catIcon;
  final String catName;
  bool currentSelected;
  PlaceCategory({
    @required this.catID,
    @required this.catIcon,
    @required this.catName,
    this.currentSelected,
  });
}
