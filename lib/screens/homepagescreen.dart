import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_brandzgarage/layouts/catItemLayout.dart';
import 'package:travel_brandzgarage/layouts/myappbar.dart';
import 'package:travel_brandzgarage/providers/categoriesProvider.dart';

class HomePageScreen extends StatelessWidget {
  final List<String> cities = ["Paris", "New York", "Pune"];
  var currentCity = "Paris";
  int currentCategoryIndex = 0;

  void selectStatus() {}

  @override
  Widget build(BuildContext context) {
    final catList = Provider.of<CategoriesProvider>(context).items;
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              margin: EdgeInsets.all(16),
              child: MyAppBar(),
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 16, left: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catList.length,
                // itemBuilder: (context, index) => Text('Hi'),
                itemBuilder: (context, index) {
                  if (catList[index].currentSelected) {
                    currentCategoryIndex = index;
                  }
                  return CatItemLayout(
                    catIcon: catList[index].catIcon,
                    catName: catList[index].catName,
                    isSelected: catList[index].currentSelected,
                    index: index,
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 20,
            child: Text(
              "Popular Events",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 20,
            child: Text(
              'Hello',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}

/*
 title: DropdownButton<String>(
                  items: cities.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String newitem) {
                    setState(() {
                      this.currentCity = newitem;
                    });
                  },
                  elevation: 0,
                  value: currentCity,
                  style: TextStyle(),
                ),
*/
