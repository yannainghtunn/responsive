import 'package:flutter/material.dart';

Widget TextSmall(String text,
    {Color color: Colors.black,
    double fs = 12,
    FontWeight font = FontWeight.normal,
    TextAlign? align,
    bool underline = false}) {
  return Text(text,
      textAlign: align,
      style: TextStyle(
          fontSize: fs,
          color: color,
          fontWeight: font,
          decoration:
              underline ? TextDecoration.underline : TextDecoration.none));
}

Widget TextMedium(String text,
    {Color color = Colors.black,
    double fs = 14,
    TextAlign? align,
    FontWeight font = FontWeight.w400,
    bool underline = false}) {
  return Text(text,
      textAlign: align,
      style: TextStyle(
          fontSize: fs,
          color: color,
          fontWeight: font,
          decoration:
              underline ? TextDecoration.underline : TextDecoration.none));
}

Widget TextLarge(String text,
    {Color color = Colors.black,
    double fs = 16,
    TextAlign? align,
    FontWeight font = FontWeight.bold,
    bool underline = false}) {
  return Text(text,
      textAlign: align,
      style: TextStyle(
          fontSize: fs,
          color: color,
          fontWeight: font,
          decoration:
              underline ? TextDecoration.underline : TextDecoration.none));
}

Widget Width([double value = 10]) {
  return SizedBox(
    width: value,
  );
}

Widget Height([double value = 10]) {
  return SizedBox(
    height: value,
  );
}
