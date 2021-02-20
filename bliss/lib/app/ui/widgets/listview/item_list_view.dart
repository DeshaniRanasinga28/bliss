import 'package:bliss/app/data/models/Items.dart';
import 'package:bliss/app/data/providers/Items_provider.dart';
import 'package:bliss/app/bloc/items_state.dart';
import 'package:bliss/app/global/colors.dart';
import 'package:bliss/app/ui/screens/product_item.dart';
import 'package:flutter/material.dart';

import '../../../dependencies_config.dart';
import '../containers/item_view.dart';

class ItemListView extends StatelessWidget {
  final ItemsBloc _itemsBloc;

  ItemListView() : _itemsBloc = getIt<ItemsBloc>(){
    _itemsBloc.getItemList();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return StreamBuilder<ItemsState>(
      initialData: _itemsBloc.state,
      stream: _itemsBloc.observableState,
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
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: state.items.length,
      itemBuilder: (context, index) {
        final PopularItemState product = state.items[index];
        return ProductItem(product);
      },
    );
  }
}




