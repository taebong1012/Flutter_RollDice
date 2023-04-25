import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    int r = Random().nextInt(6) + 1;
    setState(() {
      switch (r) {
        case 1:
          activeDiceImage = 'assets/images/dice-1.png';
          break;
        case 2:
          activeDiceImage = 'assets/images/dice-2.png';
          break;
        case 3:
          activeDiceImage = 'assets/images/dice-3.png';
          break;
        case 4:
          activeDiceImage = 'assets/images/dice-4.png';
          break;
        case 5:
          activeDiceImage = 'assets/images/dice-5.png';
          break;
        case 6:
          activeDiceImage = 'assets/images/dice-6.png';
          break;
        default:
          activeDiceImage = '';
          break;
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
