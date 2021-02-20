import 'package:bliss/app/data/providers/Items_provider.dart';
import 'package:bliss/app/bloc/items_state.dart';
import 'package:bliss/app/ui/screens/product_item.dart';
import 'package:flutter/material.dart';

import '../../dependencies_config.dart';

class ProductList extends StatelessWidget {
  final ItemsBloc _bloc;

  ProductList() : _bloc= getIt<ItemsBloc>(){
    _bloc.getItemList();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ItemsState>(
      initialData: _bloc.state,
      stream: _bloc.observableState,
      builder: (context, snapshot) {
        final state = snapshot.data;

        if (state is LoadingItemsState) {
          return const Center(
              child: CircularProgressIndicator()
          );
        } else if (state is ErrorItemsState) {
          return Center(
              child:Text(state.message)
          );
        } else {
          return _renderProductList(context, state);
        }
      },
    );
  }

  Widget _renderProductList(BuildContext context, LoadedItemsState state) {
    return GridView.builder(
      itemCount: state.items.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250.0, childAspectRatio: 0.58),
      itemBuilder: (context, index) {
        final PopularItemState product = state.items[index];

        return ProductItem(product);
      },
    );
  }
}
