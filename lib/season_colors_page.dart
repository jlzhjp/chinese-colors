import 'package:chinese_colors/chinese_colors.dart';
import 'package:chinese_colors/color_extensions.dart';
import 'package:chinese_colors/swatch_page.dart';
import 'package:flutter/material.dart';

class SeasonColorsPage extends StatelessWidget {
  final Season season;
  final Color backgroundColor;

  const SeasonColorsPage(
      {super.key, required this.season, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: ListView(
                children: chineseColors[season]!.entries.map((entry) {
              return SolarTermColors(
                  titleColor: backgroundColor.toForeground(),
                  solarTermName: entry.key,
                  colorSets: entry.value);
            }).toList()),
          )),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 10,
            child: IconButton(
              color: backgroundColor.toForeground(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_rounded),
            ),
          ),
        ],
      ),
    );
  }
}

class SolarTermColors extends StatelessWidget {
  final String solarTermName;
  final Color titleColor;
  final List<Map<String, int>> colorSets;

  const SolarTermColors({
    super.key,
    required this.titleColor,
    required this.solarTermName,
    required this.colorSets,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 0, 8),
            child: Text(
              solarTermName,
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: titleColor),
            ),
          ),
          Column(
              children: colorSets.map((colorSet) {
            return Row(
                children: colorSet.entries.map((entry) {
              return Expanded(
                child: ColorSwatch(
                  colorName: entry.key,
                  color: Color(entry.value),
                  solarTerm: solarTermName,
                ),
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
  final String solarTerm;
  final String colorName;
  const ColorSwatch(
      {super.key,
      required this.colorName,
      required this.color,
      required this.solarTerm});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Hero(
        tag: colorName,
        child: Card(
            color: color,
            clipBehavior: Clip.antiAlias,
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => SwatchPage(
                                color: color,
                                name: colorName,
                                solarTerm: solarTerm,
                              ))));
                },
                child: Center(
                    child: Text(
                  colorName,
                  style: TextStyle(
                      color: color.toForeground(),
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                )))),
      ),
    );
  }
}
