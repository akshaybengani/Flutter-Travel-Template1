import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_brandzgarage/providers/categoriesProvider.dart';
import 'package:travel_brandzgarage/providers/placeProvider.dart';
import 'package:travel_brandzgarage/screens/homepagescreen.dart';
import 'package:travel_brandzgarage/screens/placedetailscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: CategoriesProvider()),
        ChangeNotifierProvider.value(value: PlaceProvider()),
      ],
      child: MaterialApp(
        title: 'Travel App',
        debugShowCheckedModeBanner: false,
        home: HomePageScreen(),
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: Colors.transparent,
              
            )
            ),
            routes: {
              PlaceDetailScreen.routename: (ctx) => PlaceDetailScreen(),
            },
      ),
    );
  }
}
