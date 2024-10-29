import 'package:first_app/home_title.dart';
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

  void rollDice() {
    print('Rolling dice...');
  }

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
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dices/dice-1.png',
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              child: const HomeTitle('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
