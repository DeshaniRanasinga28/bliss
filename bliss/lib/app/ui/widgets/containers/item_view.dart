import 'package:bliss/app/global/colors.dart';
import 'package:bliss/app/model/item.dart';
import 'package:bliss/app/ui/screens/item/item_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Item item;

  const ProductItem(this.item);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Padding(
        padding: EdgeInsets.fromLTRB(1.0, 2.0, 20.0, 4.0),
        child: InkWell(
          child: Container(
              height: 780.0,
              width:  h < 770.0 ? 220.0 : 230.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(int.parse(item.color)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(int.parse(item.color)),
                      blurRadius: 8.0,
                    ),]
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                          height: h < 770.0 ? 50.0 : 60.0,
                          alignment: Alignment.centerLeft,
                          child:  Text(
                            item.price,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: h < 770.0 ? 18.0 : 20.0,
                              color: grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                          height: h < 770.0 ? 50.0 : 60.0,
                          width : h < 770.0 ? 50.0 : 60.0,
                          alignment: Alignment.centerLeft,
                          child: Center(
                            child: IconButton(
                              icon: Icon(Icons.favorite, color: white253),
                              iconSize: h < 770.0 ? 30.0 : 35.0,
                            ),//(Icons.favorite, color: white253, size: 35.0,),
                          )
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                        height: h < 770.0 ? 50.0 : 60.0,
                        alignment: Alignment.centerLeft,
                        child: Center(
                          child: Image.network(item.image),
                        )
                    ),
                  ),
                ],
              )
          ),
          onTap: () =>
              // Navigator.push(context, MaterialPageRoute(
              Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => ItemScreen(
                    item,
                  )
              ),
              ModalRoute.withName("/home")
          ),
        )
    );
  }
}
