import 'dart:math';
import 'package:flutter/material.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var activeDice = 1;
  void rollDice() {
    setState(() {
      activeDice = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(ctx) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/dice-$activeDice.png', width: 150),
        SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: Text("Roll Me", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
