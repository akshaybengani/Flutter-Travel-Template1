import 'package:flutter/foundation.dart';
import 'package:travel_brandzgarage/models/placeLocation.dart';

class PlaceItem with ChangeNotifier{
  final String placeid;
  final String title;
  final String imgUrl;
  final List<String> category;
  final String cityName;
  final String eventdate;
  final PlaceLocation placeLocation;
  bool isFavourite;

  PlaceItem({
    @required this.placeid,
    @required this.title,
    @required this.imgUrl,
    @required this.category,
    @required this.cityName,
    @required this.eventdate,
    @required this.placeLocation, 
    this.isFavourite,
  });


}
