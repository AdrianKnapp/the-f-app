import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.startAlignment,
    required this.endAlignment,
  });

  const GradientContainer.purple({super.key})
      : startAlignment = Alignment.topLeft,
        endAlignment = Alignment.bottomRight;

  final Alignment startAlignment;
  final Alignment endAlignment;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: const [Colors.deepPurple, Colors.deepPurpleAccent],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
