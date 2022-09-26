import 'package:flutter/material.dart';

class VerticalText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const VerticalText(this.text, {this.style, super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      alignment: WrapAlignment.center,
      children: text
          .split("")
          .map((ch) => Text(
                ch,
                style: style,
              ))
          .toList(),
    );
  }
}
