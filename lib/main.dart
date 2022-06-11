// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sonicelray2/StartScreen.dart';
import 'Home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sonic raye2',
      home: startScreen(),
    );
  }
}
