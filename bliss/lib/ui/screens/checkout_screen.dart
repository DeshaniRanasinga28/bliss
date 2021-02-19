import 'package:bliss/global/colors.dart';
import 'package:bliss/ui/widgets/common_widget.dart';
import 'package:bliss/ui/widgets/containers/search_view.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CheckoutScreenState();
  }
}

class _CheckoutScreenState extends State<CheckoutScreen>{
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white253,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                imageView( h < 770.0 ? 50.0 : 60.0),
                Expanded(
                    child: Container(
                      child: ListView(
                        children: [
                          Text("hhsgh"),
                          Text("hhsgh")
                        ],
                      ),
                    )
                )
              ],
            ),
          ],
        )
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            height: 100.0,
            width: w,
            color: white253,
            child: Padding(
              padding: EdgeInsets.only(top: 25.0, bottom: 25.0,),
              child: RaisedButton(
                color: pink97,
                child: textLabel('Checkout',  h < 770.0  ? 20.0 : 24.0, white, FontWeight.w500),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}
