import 'package:flutter/material.dart';

extension ColorExtension on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  bool isLight() {
    final hsl = HSLColor.fromColor(this);
    return hsl.lightness > 0.5;
  }

  Color toForeground() {
    return isLight() ? darken(0.5) : lighten(0.5);
  }

  String toHexString() {
    return '#${red.toRadixString(16)}${green.toRadixString(16)}${blue.toRadixString(16)}';
  }

  String toCssRgb() {
    return 'rgb($red, $green, $blue)';
  }

  String toCssHsl() {
    var hslColor = HSLColor.fromColor(this);
    return 'hsl(${hslColor.hue.round()}, ${hslColor.saturation.round()}, ${hslColor.lightness.round()})';
  }
}
