import 'package:chinese_colors/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'vertical_text.dart';

class SwatchPage extends StatelessWidget {
  final Color color;
  final String name;
  final String solarTerm;

  const SwatchPage(
      {super.key,
      required this.color,
      required this.name,
      required this.solarTerm});

  @override
  Widget build(BuildContext context) {
    final foreground = color.toForeground();
    final hex = color.toHexString();
    final rgb = color.toCssRgb();
    final hsl = color.toCssHsl();

    return Scaffold(
      backgroundColor: color,
      body: Hero(
        tag: name,
        child: Material(
          type: MaterialType.transparency,
          child: Stack(
            children: [
              Positioned(
                top: 50,
                left: 50,
                child: Column(
                  children: [
                    VerticalText(solarTerm,
                        style: TextStyle(fontSize: 40, color: foreground)),
                    VerticalText("·",
                        style: TextStyle(fontSize: 40, color: foreground)),
                    VerticalText(name,
                        style: TextStyle(fontSize: 60, color: foreground)),
                  ],
                ),
              ),
              Positioned(
                  left: 10,
                  top: 10,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_rounded),
                    color: foreground,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
              Positioned(
                  bottom: 30,
                  right: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Copyable(
                        color: foreground,
                        display: 'HEX: $hex',
                        copy: hex,
                      ),
                      Copyable(
                        color: foreground,
                        display: 'RGB: $rgb',
                        copy: rgb,
                      ),
                      Copyable(
                        color: foreground,
                        display: 'HSL: $hsl',
                        copy: hsl,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class Copyable extends StatelessWidget {
  final String display;
  final String copy;
  final Color color;
  const Copyable(
      {super.key,
      required this.display,
      required this.copy,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        display,
        style: TextStyle(color: color),
      ),
      IconButton(
        icon: Icon(
          Icons.copy_rounded,
          color: color,
        ),
        onPressed: () async {
          final snackBar = SnackBar(
            content: Text(
              '已复制: $copy',
              style: const TextStyle(fontFamily: "LXGWWenKai"),
            ),
            behavior: SnackBarBehavior.floating,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);

          final data = ClipboardData(text: copy);
          await Clipboard.setData(data);
        },
      )
    ]);
  }
}
