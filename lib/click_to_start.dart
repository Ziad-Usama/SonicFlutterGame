import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClicktoStart extends StatelessWidget {
  final bool gameHasStarted;
  ClicktoStart({required this.gameHasStarted});

  @override
  Widget build(BuildContext context) {
    return gameHasStarted
        ? Container()
        : Stack(
            children: [
              Container(
                alignment: Alignment(0, 0),
                child: Image.asset("assets/images/start.png"),
              ),
              Container(
                alignment: Alignment(0, -0.7),
                child: Text(
                  "Sonic El ray2 game",
                  style: TextStyle(
                    color: Color(0xffE0BC76),
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          );
  }
}
