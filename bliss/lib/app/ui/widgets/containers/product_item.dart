import 'package:bliss/app/bloc/bloc_provider.dart';
import 'package:bliss/app/util/data/item_state.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final PopularItemState _productItem;

  const ProductItem(this._productItem);

  @override
  Widget build(BuildContext context) {

    return Card(
        child: Column(
      children: <Widget>[
        Expanded(
            flex: 5,
            child: Image.network(
              _productItem.image,
              fit: BoxFit.fitWidth,
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            _productItem.price.toString(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.body1,
          ),
        ),
        Text(_productItem.price.toString(), style: Theme.of(context).textTheme.headline),
        RawMaterialButton(
          child: Text(
            'Add to cart'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .button
                .copyWith(color: Theme.of(context).primaryColor),
          ),
        )
      ],
    ));
  }
}
