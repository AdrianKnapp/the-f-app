import 'package:first_app/home_title.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

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
        child: HomeTitle(),
      ),
    );
  }
}
