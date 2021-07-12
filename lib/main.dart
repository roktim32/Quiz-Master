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
          title: Text("Quiz App"),
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              // border: Border.all(width: 5, color: Colors.red),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10.0,
                    offset: Offset(0.3, 0.3),
                    color: Color(0xFF000000).withOpacity(0.2)),
              ],
              // gradient: RadialGradient(
              //   colors: [Colors.blue, Colors.black],
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
