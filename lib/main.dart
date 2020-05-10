import 'package:cookbook_app/categories.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cookbook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Categories(),
    );
  }
}
