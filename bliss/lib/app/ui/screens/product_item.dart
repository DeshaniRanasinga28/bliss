import 'package:bliss/app/bloc/items_state.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final PopularItemState items;

  const ProductItem(this.items);

  @override
  Widget build(BuildContext context) {
    // final cartBloc = BlocProvider.of<CartBloc>(context);

    return Card(
        child: Column(
      children: <Widget>[
        Expanded(
            flex: 5,
            child: Container(
              width: 50.0,
              height: 50.0,
              child: Image.network(
                "${items.image}",
                fit: BoxFit.fitWidth,
              ),
            ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            items.code,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.body1,
          ),
        ),
        Text(items.id.toString(), style: Theme.of(context).textTheme.headline),
        RawMaterialButton(
          child: Text(
            'Add to cart'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .button
                .copyWith(color: Theme.of(context).primaryColor),
          ),
          // onPressed: ()=> cartBloc.addProductToCartCart(_productItem),
        )
      ],
    ));
  }
}
