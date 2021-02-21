import 'package:bliss/app/global/colors.dart';
import 'package:bliss/app/model/item.dart';
import 'package:bliss/app/ui/widgets/common_widget.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget{
  final Item item;
  const ItemScreen(this.item);
  @override
  State<StatefulWidget> createState() {
    return _ItemScreenState();
  }
}

class _ItemScreenState extends State<ItemScreen>{

  int i = 0;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(int.parse(widget.item.color)),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color(int.parse(widget.item.color)),
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: new IconButton(
            icon: const Icon(Icons.arrow_back, color: white253),
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
              color: Color(int.parse(widget.item.cardcolor)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: textLabel(widget.item.code,  h < 770.0  ? 36.0 : 40.0, grey, FontWeight.w500),
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
                              child: textLabel(widget.item.price,  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel('Height',  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel(widget.item.height,  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel('Width',  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel(widget.item.width,  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel('Weight',  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              child: textLabel(widget.item.weight,  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
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
                    width: w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.remove, color: grey,),
                          ),
                          onTap: (){
                            setState(() {
                              i <= 0 ? i = 0 : i--;
                            });
                          },
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: textLabel(i.toString(),  h < 770.0  ? 20.0 : 24.0, grey, FontWeight.w500),
                        ),
                        GestureDetector(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add, color: grey),
                          ),
                          onTap: (){
                            setState(() {
                              i++;
                            });
                          },
                        )
                      ],
                    ),
                  ), flex: 1,),
                Expanded(
                  child: Container(
                    width: w,
                    // color: Colors.blue,
                    child: Padding(
                      padding: EdgeInsets.only(top: h < 770.0  ? 15.0 : 25.0, bottom:  h < 770.0  ? 15.0 : 25.0,),
                      child: RaisedButton(
                        color: pink97,
                        child: textLabel('Add to Cart',  h < 770.0  ? 20.0 : 24.0, white, FontWeight.w500),
                        onPressed: () {
                          print('i:---> $i');
                        },
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
