import 'package:flutter/material.dart';
import 'pageOne.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Challenger',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: PageOne()
    );
  }
}