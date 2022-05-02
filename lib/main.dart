import 'package:flutter/material.dart';
// import 'pageOne.dart';
import "page_two.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Challenger',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // home: PageOne());
      home: PageTwo(),
    );
  }
}
