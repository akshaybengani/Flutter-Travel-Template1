import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Drop Down implementation Pending
      title: Text(
        "Paris",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 23,
              backgroundColor: Colors.blueGrey[800],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
        SizedBox(width: 10),
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 23,
              backgroundColor: Colors.blueGrey[800],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
          ],
        )
      ],
    );
  }
}
