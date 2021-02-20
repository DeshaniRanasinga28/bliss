import 'package:flutter/material.dart';

class Item {
  final String id;
  final String image;
  final String code;
  final double price;
  final String height;
  final String width;
  final String weight;
  final String color;
  final String subColor;

  Item(
      this.id,
      this.image,
      this.code,
      this.price,
      this.height,
      this.width,
      this.weight,
      this.color,
      this.subColor);
}