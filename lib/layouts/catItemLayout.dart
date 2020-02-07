import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_brandzgarage/providers/categoriesProvider.dart';

class CatItemLayout extends StatelessWidget {
  final String catIcon;
  final String catName;
  final bool isSelected;
  final int index;

  CatItemLayout({
    this.catIcon,
    this.catName,
    this.isSelected,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<CategoriesProvider>(context, listen: false)
            .makeItSelected(index);
      },
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected ? Colors.purple[700] : Colors.blueGrey[800],
        ),
        width: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                CircleAvatar(
                    radius: 25,
                    backgroundColor:
                        isSelected ? Colors.purple[500] : Colors.blueGrey[700]),
                Text(catIcon),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
                child: Text(
              catName,
              style: TextStyle(
                color: Colors.white,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
