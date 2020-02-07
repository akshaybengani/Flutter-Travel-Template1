import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_brandzgarage/providers/categoriesProvider.dart';
import 'package:travel_brandzgarage/screens/homepagescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: CategoriesProvider())],
      child: MaterialApp(
        title: 'Travel App',
        debugShowCheckedModeBanner: false,
        home: HomePageScreen(),
        theme: ThemeData(
            //appBarTheme: AppBarTheme()
            ),
      ),
    );
  }
}
