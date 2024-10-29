import 'package:first_app/home_title.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [Colors.deepPurple, Colors.deepPurpleAccent],
        ),
      ),
      child: const Center(
        child: HomeTitle(),
      ),
    );
  }
}
