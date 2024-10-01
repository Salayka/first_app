import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/centered.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.startAlignment, this.endAlignment, {super.key});
  Alignment startAlignment;
  Alignment endAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: startAlignment,
            end: endAlignment,
            colors: const [
              Color.fromARGB(255, 44, 8, 128),
              Color.fromARGB(255, 9, 1, 24),
            ]),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
