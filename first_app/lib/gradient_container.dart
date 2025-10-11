import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class Gradientcontainer extends StatelessWidget {
  const Gradientcontainer(this.colorsList, {super.key});
  final List<Color> colorsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorsList,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),

      child: Center(child: DiceRoller()),
    );
  }
}
