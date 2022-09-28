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
        body: Stack(
          children: [
            Positioned.fill(
                child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).padding.top, 20, 0),
              child: ListView(
                  children: chineseColors[season]!.entries.map((entry) {
                return SolarTermColors(
                    solarTermName: entry.key, colorSets: entry.value);
              }).toList()),
            )),
            Positioned(
              top: MediaQuery.of(context).padding.top,
              left: 10,
              child: SizedBox(
                width: 60,
                height: 60,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_rounded),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeasonBackground extends StatelessWidget {
  const SeasonBackground({
    Key? key,
    required this.verse,
    required this.backgroundColor,
    required this.season,
  }) : super(key: key);

  final String verse;
  final Color backgroundColor;
  final Season season;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            type: MaterialType.transparency,
            child: VerticalText(
              verse,
              style:
                  TextStyle(color: backgroundColor.darken(0.6), fontSize: 20),
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
    );
  }
}

class SolarTermColors extends StatelessWidget {
  final String solarTermName;
  final List<Map<String, int>> colorSets;

  const SolarTermColors(
      {super.key, required this.solarTermName, required this.colorSets});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 8, 8, 8),
            child: Text(
              solarTermName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
              children: colorSets.map((colorSet) {
            return Row(
                children: colorSet.entries.map((entry) {
              return Expanded(
                child: ColorSwatch(
                    colorName: entry.key, color: Color(entry.value)),
              );
            }).toList());
          }).toList())
        ],
      ),
    );
  }
}

class ColorSwatch extends StatelessWidget {
  final Color color;
  final String colorName;
  const ColorSwatch({super.key, required this.colorName, required this.color});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
          color: color,
          clipBehavior: Clip.antiAlias,
          child: InkWell(onTap: () {}, child: Center(child: Text(colorName)))),
    );
  }
}
