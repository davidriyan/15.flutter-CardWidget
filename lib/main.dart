import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              buildCard(
                Icons.ac_unit_sharp,
                'hello',
              ),
              buildCard(Icons.sensors_sharp, 'hoho')
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 10,
      child: Row(
        children: [
          Container(
            child: Icon(
              iconData,
              color: Colors.red,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
