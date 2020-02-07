import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_brandzgarage/layouts/catItemLayout.dart';
import 'package:travel_brandzgarage/layouts/myappbar.dart';
import 'package:travel_brandzgarage/layouts/placeItemLayout.dart';
import 'package:travel_brandzgarage/providers/categoriesProvider.dart';
import 'package:travel_brandzgarage/providers/placeProvider.dart';

class HomePageScreen extends StatelessWidget {
  final List<String> cities = ["Paris", "New York", "Pune"];
  var currentCity = "Paris";
  int currentCategoryIndex = 0;

  void selectStatus() {}

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final size = MediaQuery.of(context).size;
    final catList = Provider.of<CategoriesProvider>(context).items;
    final placeList = Provider.of<PlaceProvider>(context).items;

    return Scaffold(
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey[900],
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.grey[200]),
            title: Text('Account', style: TextStyle(color: Colors.white),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, color: Colors.grey[200]),
            title: Text('Events', style: TextStyle(color: Colors.white),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard, color: Colors.grey[200]),
            title: Text('Dashboard', style: TextStyle(color: Colors.white),),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              margin: EdgeInsets.all(8),
              child: MyAppBar(),
            ),
          ),
          Positioned(
            top: screenHeight * 0.15,
            child: Container(
              height: screenHeight * 0.20,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10),
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
            top: screenHeight * 0.38,
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
            top: screenHeight * 0.46,
            left: 20,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: screenHeight * 0.48,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: placeList.length,
                itemBuilder: (context, index) {
                  return PlaceItemLayout(placeList[index], size);
                },
              ),
            ),
          ),
          
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
