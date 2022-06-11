import 'package:flutter/material.dart';
import 'globals.dart' as globals;

class scorepage extends StatefulWidget {
  // const scorepage({Key? key}) : super(key: key);
  // scorepage({

  // });
  // int counter1;
  // int counter2;
  // int counter3;
  @override
  State<scorepage> createState() => _scorepageState();
}

class _scorepageState extends State<scorepage> {
  // List<int> ThreeHighestScores = globals.Scores;
  // List<int>ThreeHighestScores = globals.Scores.sort((a, b) => a.length.compareTo(b.length));
  int counter1 = globals.Scores[globals.Scores.length - 1];
  int counter2 = globals.Scores[globals.Scores.length - 2];
  int counter3 = globals.Scores[globals.Scores.length - 3];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('The highest three scores '),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('assets/images/sonic4k.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(30),
          children: [
            SizedBox(
              height: 100,
            ),
            Text('Score 1: '),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(8),
              child: Text(
                counter1.toString(),
                style: TextStyle(fontSize: 24, color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text('Score 2: '),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(8),
              child: Text(
                counter2.toString(),
                style: TextStyle(fontSize: 24, color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text('Score 3: '),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(8),
              child: Text(
                counter3.toString(),
                style: TextStyle(fontSize: 24, color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
