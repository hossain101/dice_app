import 'package:flutter/material.dart';
import 'dart:math';

class DiceBody extends StatefulWidget {
  const DiceBody({Key? key}) : super(key: key);

  @override
  State<DiceBody> createState() => _DiceBodyState();
}

class _DiceBodyState extends State<DiceBody> {
  int leftDice = 1;
  int rightDice = 3;

  void changeDiceFace() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$leftDice.png'),
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$rightDice.png'),
              ),
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
