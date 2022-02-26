import 'package:dice_app/DiceBody.dart';
import 'package:flutter/material.dart';

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("DICE"),
        centerTitle: true,
      ),
      body: DiceBody(),
    );
  }
}
