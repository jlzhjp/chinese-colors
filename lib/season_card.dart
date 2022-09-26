import 'package:chinese_colors/color_extensions.dart';
import 'package:flutter/material.dart';

class SeasonCard extends StatelessWidget {
  final String seasonName;
  final String verse;
  final Color backgroundColor;

  const SeasonCard(
      {super.key,
      required this.seasonName,
      required this.backgroundColor,
      required this.verse});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              seasonName,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: backgroundColor.darken(0.8)),
            ),
            Text(
              verse,
              style: TextStyle(color: backgroundColor.darken(0.6)),
            )
          ],
        ),
      ),
    );
  }
}
