import 'package:covid_tracker/constant.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          body1: TextStyle(
            color: kBodyTextColor,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
