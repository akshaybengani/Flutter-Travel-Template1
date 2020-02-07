import 'package:flutter/material.dart';
import 'package:travel_brandzgarage/models/placeitem.dart';

class PlaceItemLayout extends StatelessWidget {
  PlaceItem placeItem;
  Size size;
  PlaceItemLayout(this.placeItem, this.size);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey[900],
      child: Container(
        width: size.width * 0.56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Container(
                    height: 200,
                    width: 250,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(placeItem.imgUrl, fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  placeItem.eventdate,
                  style: TextStyle(
                      color: Colors.indigo[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                SizedBox(height: 5),
                Expanded(
                  child: Text(
                    placeItem.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    placeItem.cityName,
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            Positioned(
              left: 140,
              top: 180,
              child: CircleAvatar(
                backgroundColor: Colors.grey[700],
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
