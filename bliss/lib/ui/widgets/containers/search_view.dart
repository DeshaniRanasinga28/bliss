import 'package:bliss/global/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return  Row(
      children: [
        Expanded(
          child: Container(
              height: h < 770.0 ? 42.0 : 48.0,
              color: white,
              alignment: Alignment.centerLeft,
              child: TextField(
                autofocus: true,
                style: TextStyle(color: grey, fontSize: 20),
                decoration: InputDecoration.collapsed(
                  hintText: "Search Your Model",
                  hintStyle: TextStyle(
                      fontSize: h < 770.0 ? 18.0 : 20.0,
                      color: Colors.grey[400]
                  ),
                  border: InputBorder.none,
                ),
              )
          ),
          flex: 6,
        ),
        Container(
            height: h < 770.0 ? 45.0 : 48.0,
            width: h < 770.0 ? 45.0 : 48.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: pink,
            ),
            child: Center(
              child: Icon(
                Icons.search_rounded,
                color: white,
                size: h < 770.0 ? 30.0 : 35.0,
              ),
            )
        )
      ],
    );
  }
}


