import 'package:bliss/app/global/colors.dart';
import 'package:bliss/app/ui/widgets/listview/item_list_view.dart';
import 'package:bliss/app/ui/widgets/common_widget.dart';
import 'package:bliss/app/ui/widgets/containers/category_view.dart';
import 'package:bliss/app/ui/widgets/containers/item_view.dart';
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
                                backgroundImage: const AssetImage('images/men.jpeg'),
                              ),
                            )
                        )
                      ],
                    ),
                    textLabel(
                        'Hello,',
                        h < 770.0  ? 18.0 : 20.0,
                        grey,
                        FontWeight.w500),
                    textLabel(
                        'Sudesh Kumara',
                        30.0,
                        grey,
                        FontWeight.bold),
                    SearchView(),
                    textLabel(
                        'By Category,',
                        h < 770.0  ? 18.0 : 20.0,
                        grey,
                        FontWeight.w500),
                    CategoryView(),
                    textLabel(
                        'Most Popular',
                        h < 770.0  ? 18.0 : 20.0,
                        grey,
                        FontWeight.w500),
                    Container(
                      height: h < 770.0 ? 300.0 : 330.0,
                      color: white253,
                      // child: ProductList(),
                      // child: ItemView(),
                      child: ItemListView(),
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
