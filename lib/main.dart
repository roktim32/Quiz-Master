import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Platform.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz Master"),
        ),
        body: Center(
          child: Text(
            "Hello world",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
 