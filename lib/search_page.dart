import 'package:chinese_colors/chinese_colors.dart';
import 'package:chinese_colors/color_extensions.dart';
import 'package:chinese_colors/swatch_page.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class ColorInfo {
  final Color color;
  final String solarTerm;
  final String name;

  const ColorInfo({
    required this.color,
    required this.solarTerm,
    required this.name,
  });
}

class ColorListItem extends StatelessWidget {
  final Color color;
  final String solarTerm;
  final String name;

  const ColorListItem(
      {super.key,
      required this.color,
      required this.solarTerm,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        color: color,
        child: InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    SwatchPage(color: color, name: name, solarTerm: solarTerm),
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "$solarTerm·$name",
                style: TextStyle(fontSize: 20, color: color.toForeground()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final List<ColorInfo> _colors;
  String _searchTerm = "";
  List<ColorInfo> _filteredColors = [];

  @override
  void initState() {
    super.initState();
    _colors = _getAllSortedColors();
    _filteredColors = _colors;
  }

  List<ColorInfo> _getAllSortedColors() {
    return chineseColors.entries
        .expand((season) => season.value.entries
            .map((kv) => Tuple3(season.key.seasonName, kv.key, kv.value)))
        .expand((groups) => groups.item3
            .map((group) => Tuple3(groups.item1, groups.item2, group)))
        .expand((group) => group.item3.entries.map((color) =>
            Tuple4(group.item1, group.item2, color.key, color.value)))
        .map((color) => ColorInfo(
            color: Color(color.item4),
            solarTerm: color.item2,
            name: color.item3))
        .toList()
      ..sort((lhs, rhs) {
        final hsl1 = HSLColor.fromColor(lhs.color);
        final hsl2 = HSLColor.fromColor(rhs.color);
        int result = hsl1.hue.compareTo(hsl2.hue);
        if (result == 0) {
          result = hsl1.saturation.compareTo(hsl2.saturation);
        }
        if (result == 0) {
          result = hsl1.lightness.compareTo(hsl2.lightness);
        }
        return result;
      });
  }

  void _updateSearchTerm(String value) {
    setState(() {
      _searchTerm = value;
      _filteredColors = _colors
          .where((color) =>
              color.name.contains(_searchTerm) ||
              color.solarTerm.contains(_searchTerm))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4),
          child: TextField(
            onChanged: (value) => _updateSearchTerm(value),
            decoration: const InputDecoration(
                icon: Icon(Icons.search_rounded),
                isDense: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)))),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _filteredColors.length,
            itemBuilder: (context, index) {
              final colorInfo = _filteredColors[index];
              return ColorListItem(
                  key: Key(colorInfo.name),
                  color: colorInfo.color,
                  solarTerm: colorInfo.solarTerm,
                  name: colorInfo.name);
            },
          ),
        ),
      ],
    );
  }
}
