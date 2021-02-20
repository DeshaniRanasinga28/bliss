import 'package:bliss/app/global/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../common_widget.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Container(
      height: h < 770.0 ? 55.0 : 70.0,
      // color: Colors.green,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          smallCardImageView(
             h,
             pink159,
            'images/shopping-bags.png',
            'Bags',
          ),
          smallCardImageView(
            h,
            yellow,
            'images/wallet.png',
            'Purse',
          ),
          smallCardImageView(
            h,
            green,
            'images/play-button.png',
            'Key',
          ),
        ],
      ),
    );
  }
}


