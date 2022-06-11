import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class badguy extends StatelessWidget {
  final double badguyX;
  final double badguyY;
  final double badguyWidth;
  final double badguyHeight;
  // List<String> badguys = [
  //     "assets/images/5azoo2.png",
  //     "assets/images/aboKhazook.png",
  //     "assets/images/Multi5azoo2.png"
  //   ];
  badguy({
    required this.badguyX,
    required this.badguyY,
    required this.badguyWidth,
    required this.badguyHeight,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // List<String> badguys = [
    //   "assets/images/5azoo2.png",
    //   "assets/images/aboKhazook.png",
    //   "assets/images/Multi5azoo2.png"
    // ];
    // String badguy = badguys[Random().nextInt(badguys.length)];
    return Container(
      alignment: Alignment((2 * badguyX + badguyWidth) / (2 - badguyWidth),
          (2 * badguyY + badguyHeight) / (2 - badguyHeight)),
      child: Container(
        height: size.height * 2 / 3 * badguyHeight / 2,
        width: size.width * badguyWidth / 2,
        child: Image.asset(
          "assets/images/Multi5azoo2.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
