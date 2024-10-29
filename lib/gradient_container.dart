import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({
    super.key,
    required this.startAlignment,
    required this.endAlignment,
  });

  GradientContainer.purple({super.key})
      : startAlignment = Alignment.topLeft,
        endAlignment = Alignment.bottomRight;

  final Alignment startAlignment;
  final Alignment endAlignment;

  var activeDiceImage = 'assets/images/dices/dice-1.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dices/dice-2.png';
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
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
