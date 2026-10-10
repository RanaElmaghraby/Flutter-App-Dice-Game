import 'package:flutter/material.dart';

//Create a separate Widget (define its typefor your usecase) 
//called Dice in its own file (dice.dart). 
//It receives a value (1 to 6) through its constructor 
//and displays it as an Icon.

class Dice extends StatelessWidget {
  final int value;

  const Dice({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    final diceIcons = [
      Icons.looks_one,
      Icons.looks_two,
      Icons.looks_3,
      Icons.looks_4,
      Icons.looks_5,
      Icons.looks_6,
    ];

    return Icon(
      diceIcons[value - 1],
      size: 80,
    );
  }
}
