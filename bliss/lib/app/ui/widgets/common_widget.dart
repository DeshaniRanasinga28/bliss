import 'package:flutter/material.dart';

Widget textLabel(text, fontSize, color, fontWeight) {
  return Text(
    text,
    style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight
    ),
  );
}

Widget imageView(height) {
  return Container(
    height: height,
    alignment: Alignment.centerLeft,
    child: Image.asset('images/logo.png'),
  );
}