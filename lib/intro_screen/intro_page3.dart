import 'package:flutter/material.dart';

class Intropage3 extends StatelessWidget {
  const Intropage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: Text(
          "Page 3",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
    );
  }
}
