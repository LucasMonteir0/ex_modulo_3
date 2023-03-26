import 'dart:math';
import 'package:explicit_animations/part_1/dice_two.dart';
import 'package:flutter/material.dart';

class ShakingDice extends StatefulWidget {
  const ShakingDice({Key? key}) : super(key: key);

  @override
  State<ShakingDice> createState() => _ShakingDiceState();
}

class _ShakingDiceState extends State<ShakingDice>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
    _animation = Tween(begin: -0.0, end: 0.0).animate(_controller);

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int _random = 0;

  void startShake(){
    _animation = Tween(begin: -0.05, end: 0.05).animate(_controller);
    _controller.repeat();
    Future.delayed(const Duration(seconds: 2)).then((_) {
      _animation = Tween(begin: -0.0, end: 0.0).animate(_controller);
      _controller.stop();
      rollDice();
    });

  }
  void rollDice() {
    setState(() {
      _random = Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _animation.value * pi,
      child: DiceTwo(number: _random + 1, onClicked: startShake),
    );
  }
}
