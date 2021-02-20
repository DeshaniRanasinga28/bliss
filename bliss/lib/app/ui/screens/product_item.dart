import 'package:bliss/app/bloc/items_state.dart';
import 'package:bliss/app/global/colors.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final PopularItemState items;
  const ProductItem(this.items);

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
                  color: Color(int.parse(items.color)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(int.parse(items.color)),
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
                            items.code,
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
                          child: Image.network(items.image),
                        )
                    ),
                  ),
                ],
              )
          ),
          onTap: () => Navigator.of(context).pushNamed("/itemScreen"),
        )
    );

    // return Card(
    //     child: Column(
    //   children: <Widget>[
    //     Expanded(
    //         flex: 5,
    //         child: Container(
    //           width: 50.0,
    //           height: 50.0,
    //           child: Image.network(
    //             "${items.image}",
    //             fit: BoxFit.fitWidth,
    //           ),
    //         ),
    //     ),
    //     Expanded(
    //       flex: 5,
    //       child: Container(
    //         width: 50.0,
    //         height: 50.0,
    //         color: Color(int.parse(items.subColor)),
    //         child: Text(items.price.toString())
    //       ),
    //     ),
    //     Expanded(
    //       flex: 5,
    //       child: Container(
    //         color: Color(int.parse(items.color)),
    //         width: 50.0,
    //         height: 50.0,
    //         child: Text(items.color)
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Text(
    //         items.code,
    //         maxLines: 2,
    //         overflow: TextOverflow.ellipsis,
    //         style: Theme.of(context).textTheme.body1,
    //       ),
    //     ),
    //     Text(items.id.toString(), style: Theme.of(context).textTheme.headline),
    //     RawMaterialButton(
    //       child: Text(
    //         'Add to cart'.toUpperCase(),
    //         style: Theme.of(context)
    //             .textTheme
    //             .button
    //             .copyWith(color: Theme.of(context).primaryColor),
    //       ),
    //       // onPressed: ()=> cartBloc.addProductToCartCart(_productItem),
    //     )
    //   ],
    // ));
  }
}
