import 'package:bliss/app/global/colors.dart';
import 'package:bliss/app/provider/item_provider.dart';
import 'package:bliss/app/ui/widgets/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

    final getDataPMDL = Provider.of<ItemProviderModel>(context);

    return Scaffold(
      backgroundColor: white253,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric( horizontal: 30.0),
          child: getDataPMDL.cartList.isNotEmpty
          ? Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              imageView( h < 770.0 ? 50.0 : 60.0),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                  child: Container(
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
                                    child:  Image.asset('images/bag-one.png'),
                                  ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: textLabel('BHB003,',  h < 770.0  ? 18.0 : 20.0, grey, FontWeight.w500),
                                                ),
                                                flex: 3,
                                              ),
                                              Expanded(
                                                child: Container(
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
                                  child:  Image.asset('images/bag-one.png'),
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: textLabel('BHB003,',  h < 770.0  ? 18.0 : 20.0, grey, FontWeight.w500),
                                                ),
                                                flex: 3,
                                              ),
                                              Expanded(
                                                child: Container(
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
          )
          : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              imageView( h < 770.0 ? 50.0 : 60.0),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(Icons.add_shopping_cart, size:h < 770.0 ? 150.0 :180.0, color: pink97),
                      alignTextLabel('Your cart is currently\nempty !', 20.0, grey, null)
                    ],
                  )
                ),
              )
            ],
          )
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
              child: getDataPMDL.cartList.isNotEmpty
                  ? RaisedButton(
                color: pink97,
                child: textLabel('Checkout',  h < 770.0  ? 20.0 : 24.0, white, FontWeight.w500),
                onPressed: () {

                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              )
                  : RaisedButton(
                color: pink97,
                child: textLabel('Brows Items',  h < 770.0  ? 20.0 : 24.0, white, FontWeight.w500),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                onPressed: () => Navigator.of(context).pushNamed("/homeScreen"),
              ),
            )
          ),
        ],
      ),
    );
  }
}
