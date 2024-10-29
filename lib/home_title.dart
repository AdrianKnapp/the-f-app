import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
  });

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
