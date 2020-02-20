import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_brandzgarage/models/placeitem.dart';
import 'package:travel_brandzgarage/providers/placeProvider.dart';
import 'package:travel_brandzgarage/screens/placedetailscreen.dart';

class PlaceItemLayout extends StatefulWidget {
  PlaceItem placeItem;
  Size size;
  PlaceItemLayout(this.placeItem, this.size);

  @override
  _PlaceItemLayoutState createState() => _PlaceItemLayoutState();
}

class _PlaceItemLayoutState extends State<PlaceItemLayout> {
  void _switchFav() {
    setState(() {
      widget.placeItem.isFavourite = !widget.placeItem.isFavourite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey[900],
      child: Container (
        width: widget.size.width * 0.56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: <Widget>[
            Hero(
              tag: widget.placeItem.placeid,
              child: GestureDetector(
                onTap: () {
                  Provider.of<PlaceProvider>(context, listen: false)
                      .setCurrentItem(widget.placeItem);
                  Navigator.of(context).pushNamed(PlaceDetailScreen.routename);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Container(
                        height: 200,
                        width: 250,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(widget.placeItem.imgUrl,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.placeItem.eventdate,
                      style: TextStyle(
                          color: Colors.indigo[500],
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    SizedBox(height: 5),
                    Expanded(
                      child: Text(
                        widget.placeItem.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        widget.placeItem.cityName,
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 140,
              top: 180,
              child: CircleAvatar(
                backgroundColor: widget.placeItem.isFavourite
                    ? Colors.red[100]
                    : Colors.grey[700],
                child: IconButton(
                  onPressed: _switchFav,
                  icon: Icon(
                    Icons.favorite,
                    color: widget.placeItem.isFavourite
                        ? Colors.red
                        : Colors.grey[400],
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
