import 'package:bliss/app/global/colors.dart';
import 'package:flutter/material.dart';

Widget textLabel(text, fontSize, color, fontWeight) {
  return Text(
    text,
    style: new TextStyle(
        fontFamily: 'Poppins',
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight
    ),
  );
}

Widget alignTextLabel(text, fontSize, color, fontWeight) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: new TextStyle(
        fontFamily: 'Poppins',
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight
    ),
  );
}

Widget imageView(height) {
  return new Container(
    height: height,
    alignment: Alignment.centerLeft,
    child: Image.asset('images/logo.png'),
  );
}

Widget smallCardImageView(h, color, image, text) {
  return Padding(
    padding: EdgeInsets.fromLTRB(1.0, 2.0, 10.0, 4.0),
    child: new Container(
      width: h < 770.0 ? 120.0 : 130.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: color,
          boxShadow: [
            BoxShadow(
              color: color,
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
                  image,
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
                text,
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


// Widget itemCardView(height) {
//   return new Padding(
//       padding: EdgeInsets.fromLTRB(1.0, 2.0, 20.0, 4.0),
//       child: InkWell(
//         child: Container(
//             height: 780.0,
//             width:  h < 770.0 ? 220.0 : 230.0,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(20)),
//                 color: blue254,
//                 boxShadow: [
//                   BoxShadow(
//                     color: blue254,
//                     blurRadius: 8.0,
//                   ),]
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
//                         height: h < 770.0 ? 50.0 : 60.0,
//                         alignment: Alignment.centerLeft,
//                         child:  Text(
//                           "text",
//                           style: TextStyle(
//                             fontFamily: 'Poppins',
//                             fontSize: h < 770.0 ? 18.0 : 20.0,
//                             color: grey,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                         margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
//                         height: h < 770.0 ? 50.0 : 60.0,
//                         width : h < 770.0 ? 50.0 : 60.0,
//                         alignment: Alignment.centerLeft,
//                         child: Center(
//                           child: IconButton(
//                             icon: Icon(Icons.favorite, color: white253),
//                             iconSize: h < 770.0 ? 30.0 : 35.0,
//                           ),//(Icons.favorite, color: white253, size: 35.0,),
//                         )
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                   child: Container(
//                       margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
//                       height: h < 770.0 ? 50.0 : 60.0,
//                       alignment: Alignment.centerLeft,
//                       child: Center(
//                         child: Image.asset('images/bag-one.png'),
//                       )
//                   ),
//                 ),
//               ],
//             )
//         ),
//         onTap: () => Navigator.of(context).pushNamed("/itemScreen"),
//       )
//   ),
// }