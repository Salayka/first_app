import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var currentRoll = 2;

  void rollDice() {
    setState(() {
      currentRoll = Random().nextInt(6) + 1;
    });
    print('I am now rolling the dice');
  }
  Widget build(context) {
    return Column(
      children: [
        const SizedBox(height: 200),
        Image.asset(
          'assets/images/dice-$currentRoll.png',
          width: 200,
        ),
        const SizedBox(height: 100),
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          onPressed: rollDice,
          child: const Text("Roll The Dice"),
        ),
      ],
    );
  }
}
