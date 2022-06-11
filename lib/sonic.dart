import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sonic extends StatelessWidget {
  final double sonicX;
  final double sonicY;
  final double sonicWidth;
  final double sonicHeight;

  Sonic({
    required this.sonicX,
    required this.sonicY,
    required this.sonicWidth,
    required this.sonicHeight,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment((2 * sonicX + sonicWidth) / (2 - sonicWidth),
          (2 * sonicY + sonicHeight) / (2 - sonicHeight)),
      child: Container(
        height: size.height * 2 / 3 * sonicHeight / 2,
        width: size.width * sonicWidth / 2,
        child: Image.asset(
          "assets/images/Sonic3.gif",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
