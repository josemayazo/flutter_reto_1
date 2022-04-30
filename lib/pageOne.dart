import 'package:flutter/material.dart';

class PageOne extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('First Challenger'),
      ),
      body: Center(
        child: Text('Page One'),
      ),
    );
  }
}