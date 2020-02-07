import 'package:flutter/material.dart';

class PlaceItemLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: <Widget>[
            Image.asset(
              "name",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
