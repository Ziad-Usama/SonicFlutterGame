// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:sonicelray2/scorepage.dart';
import 'Home.dart';

class startScreen extends StatefulWidget {
  const startScreen({Key? key}) : super(key: key);

  @override
  State<startScreen> createState() => _startScreenState();
}

class _startScreenState extends State<startScreen> {
  @override
  Widget build(BuildContext context) {
    List<int> Scores;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sonic game'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/sonic4K.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 460,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Home())));
                },
                child: Text(
                  'start game',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.lightBlue,
                height: 60,
                minWidth: 130,
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => scorepage())));
                },
                child: Text(
                  'highest score',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.lightBlue,
                height: 60,
                minWidth: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
