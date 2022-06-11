import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Score extends StatelessWidget {
  final bestScore;
  final score;
  Score({this.score, this.bestScore});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            Image.asset(
              "assets/images/score.png",
              width: 60,
            ),
            Text(
              score.toString(),
              style: TextStyle(color: Color(0xff00D000), fontSize: 30),
            )
          ],
        ),
        Column(
          children: [
            Image.asset(
              "assets/images/top.png",
              width: 45,
            ),
            Text(
              bestScore.toString(),
              style: TextStyle(color: Color(0xff00D000), fontSize: 30),
            ),
          ],
        ),
      ]),
    );
  }
}
