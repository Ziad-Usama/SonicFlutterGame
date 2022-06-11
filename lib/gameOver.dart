// ignore_for_file: file_names, camel_case_types, must_be_immutable

import 'package:flutter/cupertino.dart';

class gameOver extends StatelessWidget {
  bool gameEnd;
  gameOver({required this.gameEnd});
  @override
  Widget build(BuildContext context) {
    return gameEnd
        ? Stack(
            children: [
              Container(
                alignment: const Alignment(0, -0.7),
                child: const Text(
                  "You lost....",
                  style: TextStyle(color: Color(0xffE0BC76), fontSize: 40),
                ),
              ),
              Container(
                alignment: const Alignment(0, -0.1),
                child: Image.asset("assets/images/game_over.png"),
              )
            ],
          )
        : Container();
  }
}
