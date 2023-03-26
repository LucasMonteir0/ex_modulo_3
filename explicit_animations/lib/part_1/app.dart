import 'dart:math';


import 'package:explicit_animations/part_1/shaking_dice.dart';
import 'package:flutter/material.dart';

class App1 extends StatefulWidget {
  const App1({Key? key}) : super(key: key);

  @override
  State<App1> createState() => _App1State();
}

class _App1State extends State<App1> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: ShakingDice(),
        ),
      ),
    );
  }
}
