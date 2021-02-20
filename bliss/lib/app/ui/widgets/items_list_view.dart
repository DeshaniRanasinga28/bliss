import 'package:bliss/app/util/data/item_state.dart';
import 'package:bliss/app/util/data/items_bloc.dart';
import 'package:bliss/dependencies_config.dart';
import 'package:flutter/material.dart';

import 'containers/product_item.dart';

class ItemsListView extends StatelessWidget {
  final ItemsBloc _bloc;

  ItemsListView() : _bloc = getIt<ItemsBloc>(){
    _bloc.search('Elements');
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

  // Widget buildList(AsyncSnapshot<UserseResponse> snapshot){
  //   return ListView.builder(
  //       itemCount: snapshot.data.users.length,
  //       itemBuilder: (BuildContext, int index){
  //         return getStructuredGridCell(snapshot.data.users[index]);
  //       });
  // }
}
