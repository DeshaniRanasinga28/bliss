import 'package:flutter/material.dart';

class Items {
  final String id;
  final String image;
  final String code;
  final double price;
  final String height;
  final String width;
  final String weight;
  final Color color;
  final Color subColor;

  Items(
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