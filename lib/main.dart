import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ScrollController _controller = ScrollController();
    // Platform.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: CoolBox()),
      ),
    );
  }
}

class CoolBox extends StatefulWidget {
  const CoolBox({
    Key? key,
  }) : super(key: key);

  @override
  _CoolBoxState createState() => _CoolBoxState();
}

class _CoolBoxState extends State<CoolBox> {
  double width = 100;
  double height = 100;
  Color color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(
        seconds: 1,
      ),
      curve: Curves.elasticInOut,
      color: color,
      width: width,
      height: height,
      child: TextButton(
        child: Text(
          'Random',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {
          setState(() {
            width = Random().nextDouble() * 500;
            height = Random().nextDouble() * 500;

            int r = Random().nextInt(255);
            int b = Random().nextInt(255);
            int g = Random().nextInt(255);
            color = Color.fromRGBO(r, g, b, 1);
          });
        },
      ),
    );
  }
}
