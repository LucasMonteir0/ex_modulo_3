import 'dart:math';

import 'package:flutter/material.dart';
import 'package:implicit_animations/data/dice_list.dart';

class AnimatedDice extends StatelessWidget {
  const AnimatedDice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final int random = Random().nextInt(6);
    final dice = dices[random];
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
              color: dice.fontColor.withOpacity(0.5),
              height: 100 + 50 * dice.side.toDouble(),
              width: 100 + 50 * dice.side.toDouble(),
              child: Center(
                child: AnimatedDefaultTextStyle(
                    duration: const Duration(seconds: 1),
                    style: TextStyle(
                        fontSize: dice.fontSize,
                        color: dice.fontColor),
                    child: Text('${dice.side}')),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text('Jogar'),
            )
          ],
        ),
      ),
    );
  }
}
