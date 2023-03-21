import 'dart:math';

import 'package:flutter/material.dart';
import 'package:implicit_animations/data/dice_list.dart';

class TweenAnimatedDice extends StatelessWidget {
  const TweenAnimatedDice({Key? key}) : super(key: key);

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
  int batata = 1;

  void batataQuente(int valor) {
    setState(() {
      batata += valor * 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    final int random = Random().nextInt(6);
    final dice = dices[random];

    return GestureDetector(
      onTap: batata >= 400 ? null : () => batataQuente(dice.side),
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(batata.toString()),
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: 400),
                  duration: const Duration(seconds: 1),
                  child: Container(
                    height: 1,
                    width: 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: batata >= 400 ? Colors.red : Colors.yellow,
                    ),
                  ),
                  builder: (context, value, child) {
                    value = batata.toDouble();
                    return Transform.scale(
                      scale: value,
                      child: child,
                    );
                  },
                ),
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
                            fontSize: dice.fontSize, color: dice.fontColor),
                        child: Text('${dice.side}')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
