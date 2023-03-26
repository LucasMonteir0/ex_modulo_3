import 'package:flutter/material.dart';

class DiceStyle {
  final int number;

  DiceStyle(this.number);

  TextStyle get text => _numberStyles[number]!;

  Color get color => _containerColors[number]!;

  double get size => _containerSizes[number]!;

  final _numberStyles = {
    0: const TextStyle(
      color: Colors.transparent,
    ),
    1: const TextStyle(
      color: Colors.pink,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    2: const TextStyle(
      color: Colors.blue,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    3: const TextStyle(
      color: Colors.red,
      fontSize: 35,
      fontWeight: FontWeight.bold,
    ),
    4: const TextStyle(
      color: Colors.green,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
    5: const TextStyle(
      color: Colors.purple,
      fontSize: 45,
      fontWeight: FontWeight.bold,
    ),
    6: const TextStyle(
      color: Colors.white,
      fontSize: 50,
      fontWeight: FontWeight.bold,
    ),
  };

  final _containerColors = {
    0: Colors.black12,
    1: Colors.pink[50],
    2: Colors.blue[50],
    3: Colors.red[50],
    4: Colors.green[50],
    5: Colors.purple[50],
    6: Colors.black,
  };

  final _containerSizes = <int, double>{
    0: 100,
    1: 100 + 50 * 1,
    2: 100 + 50 * 2,
    3: 100 + 50 * 3,
    4: 100 + 50 * 4,
    5: 100 + 50 * 5,
    6: 100 + 50 * 6,
  };
}

class DiceTwo extends StatefulWidget {
  final int number;
  final VoidCallback onClicked;

  const DiceTwo({
    Key? key,
    required this.number,
    required this.onClicked,
  }) : super(key: key);

  @override
  State<DiceTwo> createState() => _DiceTwoState();
}

class _DiceTwoState extends State<DiceTwo> {
  @override
  Widget build(BuildContext context) {
    final style = DiceStyle(widget.number);
    return InkWell(
      onTap: widget.onClicked,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: style.size,
        height: style.size,
        color: style.color,
        alignment: Alignment.center,
        child: Text(
          widget.number.toString(),
          style: style.text,
        ),
      ),
    );
  }
}