import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(context) {
    return const Text(
      'app',
      style: TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
