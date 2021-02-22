import 'package:bliss/app/global/colors.dart';
import 'package:bliss/app/model/item.dart';
import 'package:bliss/app/provider/item_provider.dart';
import 'package:bliss/app/ui/screens/item/item_screen.dart';
import 'package:bliss/app/ui/widgets/common_widget.dart';
import 'package:bliss/app/ui/widgets/containers/filte_item_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilterScreen extends StatefulWidget{
  final String type;
  FilterScreen(this.type);
  @override
  State<StatefulWidget> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FilterScreen>{

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    final getItemList = Provider.of<ItemProviderModel>(context, listen: false);

    print("type:---> ${widget.type}");

    return Scaffold(
      backgroundColor: white253,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: white253,
          leading: new IconButton(
            icon: const Icon(Icons.arrow_back, color: grey),
            onPressed: () => Navigator.of(context).pushNamed("/homeScreen"),
        ),
      ),
      body: SafeArea(
          child: Container(
              margin: EdgeInsets.symmetric( horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  imageView( h < 770.0 ? 50.0 : 60.0),
                  Container(
                    height: h < 770.0 ? 300.0 : 330.0,
                    color: white253,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        itemCount: getItemList.itemData.data.length != 0
                            ? getItemList.itemData.data.length
                            : 0,
                        itemBuilder: (context, index) {
                          final Item item = getItemList.itemData.data[index];
                          return InkWell(
                              child: FilterItem(
                                  widget.type == 'hand bags'
                                      ? item
                                      : item
                              ),
                              onTap: () {
                                getItemList.setSingleItem(getItemList.itemData.data[index]);
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) => ItemScreen(false)),
                                        (r) => false);
                              });
                        }
                    ),

                  ),
                ],
              )
          )
      ),
    );
  }

}
