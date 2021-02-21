import 'package:bliss/app/global/colors.dart';
import 'package:bliss/app/ui/widgets/common_widget.dart';
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
        child: Container(
          margin: EdgeInsets.symmetric( horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              imageView( h < 770.0 ? 50.0 : 60.0),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                  child: Container(
                    color: Colors.teal,
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          height: 140.0,
                          width: w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.green,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green,
                                  blurRadius: 8.0,
                                ),]
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                                    color: Colors.red,
                                    child:  Image.asset('images/bag-one.png'),
                                  ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                                  color: Colors.grey,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          color: Colors.red,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  color: Colors.redAccent,
                                                  alignment: Alignment.centerLeft,
                                                  child: textLabel('BHB003,',  h < 770.0  ? 18.0 : 20.0, grey, FontWeight.w500),
                                                ),
                                                flex: 3,
                                              ),
                                              Expanded(
                                                child: Container(
                                                  color: Colors.grey,
                                                  alignment: Alignment.center,
                                                  child: Icon(Icons.close, color: white, size: 20.0,),
                                                ),
                                                flex: 1,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          color: Colors.yellow,
                                          alignment: Alignment.centerLeft,
                                          child: textLabel('Rs. 1500.00',  h < 770.0  ? 18.0 : 20.0, grey, FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                flex: 2,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          height: 140.0,
                          width: w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.green,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green,
                                  blurRadius: 8.0,
                                ),]
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                                  color: Colors.red,
                                  child:  Image.asset('images/bag-one.png'),
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                                  color: Colors.grey,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          color: Colors.red,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  color: Colors.redAccent,
                                                  alignment: Alignment.centerLeft,
                                                  child: textLabel('BHB003,',  h < 770.0  ? 18.0 : 20.0, grey, FontWeight.w500),
                                                ),
                                                flex: 3,
                                              ),
                                              Expanded(
                                                child: Container(
                                                  color: Colors.grey,
                                                  alignment: Alignment.center,
                                                  child: Icon(Icons.close, color: white, size: 20.0,),
                                                ),
                                                flex: 1,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          color: Colors.yellow,
                                          alignment: Alignment.centerLeft,
                                          child: textLabel('Rs. 1500.00',  h < 770.0  ? 18.0 : 20.0, grey, FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                flex: 2,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
              )
            ],
          ),
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
