import 'package:chinese_colors/verse.dart';
import 'package:chinese_colors/vertical_text.dart';
import 'package:flutter/material.dart';

import 'chinese_colors.dart';
import 'package:chinese_colors/color_extensions.dart';
import 'season_colors_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _navigateToSeasonColorPage(BuildContext context, Season season) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return SeasonColorsPage(
          season: season, backgroundColor: season.dominateColor.lighten(0.4));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: [
      for (final season in chineseColors.entries)
        SeasonCard(
          seasonName: season.key.seasonName,
          backgroundColor: season.key.dominateColor,
          onTap: () => _navigateToSeasonColorPage(context, season.key),
        )
    ]);
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
              VerseForTopicWidget(
                topic: seasonName,
                style: TextStyle(color: backgroundColor.darken(0.6)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: VerticalText(
                  seasonName,
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: backgroundColor.darken(0.8)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
