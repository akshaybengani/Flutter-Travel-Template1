import 'package:flutter/foundation.dart';
import 'package:travel_brandzgarage/models/placeLocation.dart';
import 'package:travel_brandzgarage/models/placeitem.dart';

class PlaceProvider with ChangeNotifier {
  List<PlaceItem> _items = [
    PlaceItem(
      placeid: "p1",
      title: "Place1",
      imgUrl: "assets/images/img1.jpg",
      category: ["c1", "c2"],
      cityName: "city1",
      eventdate: "Saturday 25",
      placeLocation: PlaceLocation(
          latitude: 28.52, longitude: 52.12, address: "Address 1"),
      isFavourite: false,
    ),
    PlaceItem(
      placeid: "p2",
      title: "Place2",
      imgUrl: "assets/images/img2.jpg",
      category: ["c1", "c3"],
      cityName: "city1",
      eventdate: "Saturday 25",
      placeLocation: PlaceLocation(
          latitude: 28.52, longitude: 52.12, address: "Address 2"),
      isFavourite: false,
    ),
    PlaceItem(
      placeid: "p3",
      title: "Place3",
      imgUrl: "assets/images/img3.jpg",
      category: ["c1", "c4"],
      cityName: "city3",
      eventdate: "Saturday 25",
      placeLocation: PlaceLocation(
          latitude: 28.52, longitude: 52.12, address: "Address 3"),
      isFavourite: false,
    ),
    PlaceItem(
      placeid: "p4",
      title: "Place4",
      imgUrl: "assets/images/img4.jpg",
      category: ["c1", "c5"],
      cityName: "city1",
      eventdate: "Saturday 25",
      placeLocation: PlaceLocation(
          latitude: 28.52, longitude: 52.12, address: "Address 4"),
      isFavourite: false,
    ),
    PlaceItem(
      placeid: "p5",
      title: "Place5",
      imgUrl: "assets/images/img5.jpg",
      category: ["c1", "c6"],
      cityName: "city5",
      eventdate: "Saturday 25",
      placeLocation: PlaceLocation(
          latitude: 28.52, longitude: 52.12, address: "Address 5"),
      isFavourite: false,
    ),
    PlaceItem(
      placeid: "p6",
      title: "Place6",
      imgUrl: "assets/images/img6.jpg",
      category: ["c1", "c2"],
      cityName: "city6",
      eventdate: "Saturday 25",
      placeLocation: PlaceLocation(
          latitude: 28.52, longitude: 52.12, address: "Address 6"),
      isFavourite: false,
    ),
    PlaceItem(
      placeid: "p7",
      title: "Place7",
      imgUrl: "assets/images/img7.jpg",
      category: ["c1", "c3"],
      cityName: "city7",
      eventdate: "Saturday 25",
      placeLocation: PlaceLocation(
          latitude: 28.52, longitude: 52.12, address: "Address 7"),
      isFavourite: false,
    ),
    PlaceItem(
      placeid: "p8",
      title: "Place8",
      imgUrl: "assets/images/img8.jpg",
      category: ["c1", "c4"],
      cityName: "city8",
      eventdate: "Saturday 25",
      placeLocation: PlaceLocation(
          latitude: 28.52, longitude: 52.12, address: "Address 8"),
      isFavourite: false,
    ),
    PlaceItem(
      placeid: "p9",
      title: "Place9",
      imgUrl: "assets/images/img9.jpg",
      category: ["c1", "c5"],
      cityName: "city9",
      eventdate: "Saturday 25",
      placeLocation: PlaceLocation(
          latitude: 28.52, longitude: 52.12, address: "Address 9"),
      isFavourite: false,
    ),
      PlaceItem(
      placeid: "p10",
      title: "Place10",
      imgUrl: "assets/images/img10.jpg",
      category: ["c1", "c6"],
      cityName: "city10",
      eventdate: "Saturday 25",
      placeLocation: PlaceLocation(
          latitude: 28.52, longitude: 52.12, address: "Address 10"),
      isFavourite: false,
    ),
  ];

  List<PlaceItem> get items {
    return _items;
  }
}
