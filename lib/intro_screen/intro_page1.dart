import 'package:flutter/material.dart';

class Intropage1 extends StatelessWidget {
  const Intropage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          "Page 1",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
    );
  }
}
