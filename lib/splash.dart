import 'dart:async';
import 'package:app/widgettree.dart';
import 'package:flutter/material.dart';

class MySplash extends StatefulWidget {
  const MySplash({Key? key}) : super(key: key);

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomeSplash(),
    );
  }
}

class MyHomeSplash extends StatefulWidget {
  const MyHomeSplash({Key? key}) : super(key: key);

  @override
  State<MyHomeSplash> createState() => _MyHomeSplashState();
}

class _MyHomeSplashState extends State<MyHomeSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset("assets/one.png"),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: WidgetTree(),
    );
  }
}
