// ignore_for_file: file_names
import 'globals.dart' as globals;
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sonicelray2/StartScreen.dart';
import 'package:sonicelray2/click_to_start.dart';
import 'package:sonicelray2/gameOver.dart';
import 'package:sonicelray2/score.dart';
import 'package:sonicelray2/sonic.dart';

import 'badguy.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int score = 0;
  int bestScore = 0;
  bool gamehasstarted = false;
  bool gameIsOver = false;
  bool jump = false;
  bool sonicKickedAsses = false;

  double gravity = 12;
  double time = 0;
  double height = 0;
  double velocity = 5;

  double sonicX = -0.5;
  double sonicY = 0.8;
  double sonicWidth = 0.2;
  double sonicHeight = 0.4;
  double badguyX = 0.5;
  double badguyY = 0.8;
  double badguyWidth = 0.2;
  double badguyHeight = 0.4;
  // List<String> badguys = [
  //   "assets/images/5azoo2.png",
  //   "assets/images/aboKhazook.png",
  //   "assets/images/Multi5azoo2.png"
  // ];
  void startGame() {
    setState(() {
      gamehasstarted = true;
    });
    Timer.periodic(const Duration(milliseconds: 10), (timer) {
      if (badGuyGotSonic()) {
        gameIsOver = true;
        timer.cancel();
        setState(() {
          if (score > bestScore) {
            bestScore = score;
            globals.Scores.add(score);
          }
        });
      }
      badGuysWaves();
      updateScore();

      setState(() {
        badguyX -= 0.01;
      });
    });
  }

  void updateScore() {
    if (badguyX < sonicX && sonicKickedAsses == false) {
      setState(() {
        sonicKickedAsses = true;
        score++;
      });
    }
  }

  void badGuysWaves() {
    setState(() {
      if (badguyX <= -1.2) {
        badguyX = 1.2;
        sonicKickedAsses = false;
      }
    });
  }

  bool badGuyGotSonic() {
    if (badguyX <= sonicX + sonicWidth &&
        badguyX + badguyWidth >= sonicX &&
        sonicY >= badguyY - badguyHeight) {
      return true;
    }
    return false;
  }

  void jumpSonicJump() {
    jump = true;
    Timer.periodic(const Duration(milliseconds: 10), (timer) {
      height = -gravity / 2 * time * time + velocity * time;
      setState(() {
        if (1 - height > 1) {
          resetJumpSonic();
          sonicY = 0.8;
          timer.cancel();
        } else {
          sonicY = 0.8 - height;
        }
      });
      if (gameIsOver) {
        timer.cancel();
      }
      time += 0.01;
    });
  }

  void resetJumpSonic() {
    jump = false;
    time = 0;
  }

  void playAgain() {
    setState(() {
      gameIsOver = false;
      gamehasstarted = false;
      badguyX = 1.2;
      score = 0;
      sonicY = 0.8;
      jump = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => startScreen())));
          },
        ),
        title: Text('Sonic gamepage'),
        centerTitle: true,
        backgroundColor: Color(0xff09acf4),
      ),
      body: GestureDetector(
        onTap: gameIsOver
            ? (playAgain)
            : (gamehasstarted ? (jump ? null : jumpSonicJump) : startGame),
        child: Scaffold(
          body: Column(children: [
            Expanded(
                flex: 2,
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                          decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/sonicbackground.png'),
                          fit: BoxFit.fill,
                        ),
                      )),
                      ClicktoStart(gameHasStarted: gamehasstarted),
                      Score(
                        score: score,
                        bestScore: bestScore,
                      ),
                      Sonic(
                          sonicX: sonicX,
                          sonicY: sonicY - sonicHeight,
                          sonicWidth: sonicWidth,
                          sonicHeight: sonicHeight),
                      badguy(
                        badguyX: badguyX,
                        badguyY: badguyY - badguyHeight,
                        badguyWidth: badguyWidth,
                        badguyHeight: badguyHeight,
                      ),
                      gameOver(gameEnd: gameIsOver),
                    ],
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
