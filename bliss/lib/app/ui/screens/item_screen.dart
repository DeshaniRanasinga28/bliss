import 'package:bliss/app/global/colors.dart';
import 'package:bliss/app/ui/widgets/common_widget.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ItemScreenState();
  }
}

class _ItemScreenState extends State<ItemScreen>{
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: blue197,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: blue197,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: new IconButton(
            icon: Icon(Icons.arrow_back, color: white253),
            onPressed: () => Navigator.of(context).pushNamed("/homeScreen"),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.share, color: white253),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite, color: white253),
            ),
            IconButton(
              onPressed: () => Navigator.of(context).pushNamed("/checkoutScreen"),
              icon: Icon(Icons.shopping_cart, color: white253),
            )
          ],
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: h * 1.0 / 2.0,
            child: Center(
              child: Image.asset('images/bag-one.png'),
            )
          ),
        ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            height: h * 1.0 / 2.0,
            width: w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              color: blue231
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: textLabel('BHB003',  h < 770.0  ? 36.0 : 40.0, grey, FontWeight.w500),
                ), flex: 2,),
                Expanded(
                  child: Container(
                    // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel('Price',  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel('1300.00',  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel('Price',  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel('60 cm',  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel('Price',  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel('35 cm',  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel('Price',  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel('850g',  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                  flex: 3,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    height: 20.0,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start ,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.remove, color: grey,),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: textLabel('0',  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add, color: grey),

                        ),
                      ],
                    ),
                  ), flex: 1,),
                Expanded(
                  child: Container(
                    width: w,
                    // color: Colors.blue,
                    child: Padding(
                      padding: EdgeInsets.only(top: 25.0, bottom: 25.0,),
                      child: RaisedButton(
                        color: pink97,
                        child: textLabel('Add to Cart',  h < 770.0  ? 20.0 : 24.0, white, FontWeight.w500),
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    )
                  ), flex: 2,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

}
