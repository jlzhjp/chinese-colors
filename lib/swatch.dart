import 'package:flutter/material.dart';

import 'vertical_text.dart';

class Swatch extends StatelessWidget {
  const Swatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9d3e3),
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 30,
            child: Column(
              children: const [
                VerticalText("雨水", style: TextStyle(fontSize: 40)),
                VerticalText("·", style: TextStyle(fontSize: 40)),
                VerticalText("盈盈", style: TextStyle(fontSize: 60)),
              ],
            ),
          ),
          Positioned(
              bottom: 30,
              right: 30,
              child: Column(
                children: [Row()],
              ))
        ],
      ),
    );
  }
}
