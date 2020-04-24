import 'package:flutter/material.dart';

import 'Activity/WeatherScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.grey[600],
        primaryColorDark: Colors.blueGrey[800],
        primaryColor: Colors.blueGrey[400]
      ),
      home: WeatherScreen(),
    );
  }
}

