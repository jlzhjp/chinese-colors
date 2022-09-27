import 'package:chinese_colors/chinese_colors.dart';
import 'package:chinese_colors/color_extensions.dart';
import 'package:chinese_colors/vertical_text.dart';
import 'package:flutter/material.dart';

class SeasonColorsPage extends StatelessWidget {
  final Season season;
  final Color backgroundColor;
  final String verse;

  const SeasonColorsPage(
      {super.key,
      required this.season,
      required this.backgroundColor,
      required this.verse});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: season.seasonName,
      child: Scaffold(
        backgroundColor: backgroundColor,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_rounded),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Material(
                          type: MaterialType.transparency,
                          child: VerticalText(
                            verse,
                            style: TextStyle(
                                color: backgroundColor.darken(0.6),
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Material(
                        type: MaterialType.transparency,
                        child: VerticalText(
                          season.seasonName,
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: backgroundColor.darken(0.8)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
