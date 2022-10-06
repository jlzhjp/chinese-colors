import 'package:chinese_colors/verse.dart';
import 'package:chinese_colors/vertical_text.dart';
import 'package:flutter/material.dart';

import 'chinese_colors.dart';
import 'package:chinese_colors/color_extensions.dart';
import 'season_colors_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: chineseColors.entries.map(
              (e) {
                var backgroundColor = e.value.values.first.first.values.first;

                return SeasonCard(
                  seasonName: e.key.seasonName,
                  backgroundColor: Color(backgroundColor),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SeasonColorsPage(
                          season: e.key,
                          backgroundColor: Color(backgroundColor).lighten(0.4));
                    }));
                  },
                );
              },
            ).toList()),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.class_rounded), label: '分类'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: '查找')
      ]),
    );
  }
}

class SeasonCard extends StatelessWidget {
  final String seasonName;
  final Color backgroundColor;
  final void Function()? onTap;

  const SeasonCard({
    super.key,
    required this.seasonName,
    required this.backgroundColor,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Material(
                  type: MaterialType.transparency,
                  child: Verse(
                    topic: seasonName,
                    style: TextStyle(color: backgroundColor.darken(0.6)),
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Material(
                  type: MaterialType.transparency,
                  child: VerticalText(
                    seasonName,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: backgroundColor.darken(0.8)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
