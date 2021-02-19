import 'package:bliss/global/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  final Color color;
  final String image;
  final String text;

  CategoryView({
    this.color,
    this.image,
    this.text
  });

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return  Padding(
      padding: EdgeInsets.fromLTRB(1.0, 2.0, 10.0, 4.0),
      child: Container(
        width: h < 770.0 ? 120.0 : 130.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: widget.color,
            boxShadow: [
              BoxShadow(
                color: widget.color,
                blurRadius: 8.0,
              ),]
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    widget.image,
                    color: Colors.white,
                    width: h < 770.0 ? 20.0 : 25.0,
                    height: h < 770.0 ? 20.0 : 25.0,)
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.text,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: h < 770.0 ? 18.0 : 20.0,
                    color: white,
                  ),
                ),
              ),
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}


