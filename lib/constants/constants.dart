import 'package:flutter/material.dart';
final Color keyprimarycolor=Color(0xff62FCD7);
final String  keybox='Notes';
List<Color>keycolors=const [  Color(0xff000A99),
  Color(0xffbf0603),
  Color(0xff9E0059),
  Color(0xffFF0054),
  Color(0xffff006e),
  Color(0xffFF5400),
  Color(0xffFFBD00),
  Color(0xffffff3f),
  Color(0xff594236),
  Color(0xff31572c),
  Color(0xffffadad),
  Color(0xffEF959C),
  Color(0xff7b2cbf),
  Color(0xff8338ec),
  Color(0xff15616d),
  Color(0xff20a4f3),
  Color(0xff8DA1B9),
  // Add more colors below based on your preferences
  Color(0xffFFD700),
  Color(0xff00FF00),
  Color(0xffFF4500),
  Color(0xff9400D3),
  Color(0xff00BFFF),
  // ... continue adding more colors
  Color(0xff4B0082),
  Color(0xff8B0000),
  Color(0xffA0522D),
  Color(0xff808000),
];

List<Color> generateHarmoniousColors() {
  List<Color> colors = [];
  int numberOfColors = 100;
  for (int i = 0; i < numberOfColors; i++) {
    colors.add(generateHarmoniousColor(i));
  }
  return colors;
}

Color generateHarmoniousColor(int index) {
  int hue = (index * (360 ~/ 100)) % 360; // Spread hues over 360 degrees
  double saturation = 0.8; // Keeping saturation constant
  double value = 0.8; // Keeping brightness constant
  HSVColor hsvColor = HSVColor.fromAHSV(1.0, hue.toDouble(), saturation, value);
  return hsvColor.toColor();
}
