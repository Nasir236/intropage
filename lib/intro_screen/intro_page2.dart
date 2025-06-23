import 'package:flutter/material.dart';

class Intropage2 extends StatelessWidget {
  const Intropage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text(
          "Page 2",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
    );
  }
}
