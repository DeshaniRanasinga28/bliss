import 'package:bliss/app/global/colors.dart';
import 'package:bliss/app/ui/screens/product_list.dart';
import 'package:bliss/app/ui/widgets/common_widget.dart';
import 'package:bliss/app/ui/widgets/containers/category_view.dart';
import 'package:bliss/app/ui/widgets/containers/search_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white253,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                margin: EdgeInsets.only( left: 30.0, top: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: imageView( h < 770.0 ? 50.0 : 60.0)
                        ),
                        Expanded(
                            child: Container(
                              margin: EdgeInsets.only( right: 30.0),
                              alignment: Alignment.centerRight,
                              height:  h < 770.0 ? 50.0 : 60.0,
                              child: CircleAvatar(
                                radius: 28,
                                backgroundImage: AssetImage('images/men.jpeg'),
                              ),
                            )
                        )
                      ],
                    ),
                    textLabel('Hello,',  h < 770.0  ? 18.0 : 20.0, grey, FontWeight.w500),
                    textLabel('Sudesh Kumara', 30.0, grey, FontWeight.bold),
                    Container(
                      padding: EdgeInsets.all(h < 770.0 ? 5.0 : 8.0),
                        margin: EdgeInsets.only( right: 30.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: white,
                        ),
                        child: SearchView()
                    ),
                    textLabel('By Category,', h < 770.0  ? 18.0 : 20.0, grey, FontWeight.w500),
                    Container(
                      height: h < 770.0 ? 55.0 : 70.0,
                      // color: Colors.green,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CategoryView(
                            color: pink159,
                            image: 'images/shopping-bags.png',
                            text: 'Bags',
                          ),
                          CategoryView(
                            color: yellow,
                            image: 'images/wallet.png',
                            text: 'Purse',
                          ),
                          CategoryView(
                            color: green,
                            image: 'images/play-button.png',
                            text: 'Key',
                          ),
                        ],
                      ),
                    ),
                    textLabel('Most Popular', h < 770.0  ? 18.0 : 20.0, grey, FontWeight.w500),
                    Container(
                      height: h < 770.0 ? 300.0 : 330.0,
                      color: white253,
                      child: ProductList(),
                      // child: ListView(
                      //   scrollDirection: Axis.horizontal,
                      //   children: [
                      //     Padding(
                      //         padding: EdgeInsets.fromLTRB(1.0, 2.0, 20.0, 4.0),
                      //         child: InkWell(
                      //           child: Container(
                      //               height: 780.0,
                      //               width:  h < 770.0 ? 220.0 : 230.0,
                      //               decoration: BoxDecoration(
                      //                   borderRadius: BorderRadius.all(Radius.circular(20)),
                      //                   color: blue254,
                      //                   boxShadow: [
                      //                     BoxShadow(
                      //                       color: blue254,
                      //                       blurRadius: 8.0,
                      //                     ),]
                      //               ),
                      //               child: Column(
                      //                 children: [
                      //                   Row(
                      //                     children: [
                      //                       Expanded(
                      //                         child: Container(
                      //                           margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      //                           height: h < 770.0 ? 50.0 : 60.0,
                      //                           alignment: Alignment.centerLeft,
                      //                           child:  Text(
                      //                             "text",
                      //                             style: TextStyle(
                      //                               fontFamily: 'Poppins',
                      //                               fontSize: h < 770.0 ? 18.0 : 20.0,
                      //                               color: grey,
                      //                             ),
                      //                           ),
                      //                         ),
                      //                       ),
                      //                       Container(
                      //                           margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      //                           height: h < 770.0 ? 50.0 : 60.0,
                      //                           width : h < 770.0 ? 50.0 : 60.0,
                      //                           alignment: Alignment.centerLeft,
                      //                           child: Center(
                      //                             child: IconButton(
                      //                               icon: Icon(Icons.favorite, color: white253),
                      //                               iconSize: h < 770.0 ? 30.0 : 35.0,
                      //                             ),//(Icons.favorite, color: white253, size: 35.0,),
                      //                           )
                      //                       ),
                      //                     ],
                      //                   ),
                      //                   Expanded(
                      //                     child: Container(
                      //                         margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      //                         height: h < 770.0 ? 50.0 : 60.0,
                      //                         alignment: Alignment.centerLeft,
                      //                         child: Center(
                      //                           child: Image.asset('images/bag-one.png'),
                      //                         )
                      //                     ),
                      //                   ),
                      //                 ],
                      //               )
                      //           ),
                      //           onTap: () => Navigator.of(context).pushNamed("/itemScreen"),
                      //         )
                      //     ),
                      //     Padding(
                      //         padding: EdgeInsets.fromLTRB(1.0, 2.0, 20.0, 4.0),
                      //         child: InkWell(
                      //           child: Container(
                      //               height: 780.0,
                      //               width:  h < 770.0 ? 220.0 : 230.0,
                      //               decoration: BoxDecoration(
                      //                   borderRadius: BorderRadius.all(Radius.circular(20)),
                      //                   color: blue254,
                      //                   boxShadow: [
                      //                     BoxShadow(
                      //                       color: blue254,
                      //                       blurRadius: 8.0,
                      //                     ),]
                      //               ),
                      //               child: Column(
                      //                 children: [
                      //                   Row(
                      //                     children: [
                      //                       Expanded(
                      //                         child: Container(
                      //                           margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      //                           height: h < 770.0 ? 50.0 : 60.0,
                      //                           alignment: Alignment.centerLeft,
                      //                           child:  Text(
                      //                             "text",
                      //                             style: TextStyle(
                      //                               fontFamily: 'Poppins',
                      //                               fontSize: h < 770.0 ? 18.0 : 20.0,
                      //                               color: grey,
                      //                             ),
                      //                           ),
                      //                         ),
                      //                       ),
                      //                       Container(
                      //                           margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      //                           height: h < 770.0 ? 50.0 : 60.0,
                      //                           width : h < 770.0 ? 50.0 : 60.0,
                      //                           alignment: Alignment.centerLeft,
                      //                           child: Center(
                      //                             child: IconButton(
                      //                               icon: Icon(Icons.favorite, color: white253),
                      //                               iconSize: h < 770.0 ? 30.0 : 35.0,
                      //                             ),//(Icons.favorite, color: white253, size: 35.0,),
                      //                           )
                      //                       ),
                      //                     ],
                      //                   ),
                      //                   Expanded(
                      //                     child: Container(
                      //                         margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      //                         height: h < 770.0 ? 50.0 : 60.0,
                      //                         alignment: Alignment.centerLeft,
                      //                         child: Center(
                      //                           child: Image.asset('images/bag-one.png'),
                      //                         )
                      //                     ),
                      //                   ),
                      //                 ],
                      //               )
                      //           ),
                      //           onTap: () => Navigator.of(context).pushNamed("/itemScreen"),
                      //         )
                      //     ),
                      //   ],
                      // ),
                    ),
                    SizedBox(height: h < 770.0  ? 5.0 : 10.0,)
                  ],
                ),
              )
            ),
          ],
        ),
      )
    );
  }

}
