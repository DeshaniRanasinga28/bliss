import 'package:bliss/app/bloc/bloc.dart';
import 'package:bliss/app/models/item.dart';
import 'package:bliss/app/resources/get_items.dart';
import 'package:bliss/app/util/data/item_state.dart';

class ItemsBloc extends Bloc<ItemsState> {
  final GetItems _getItems;

  ItemsBloc(this._getItems) {
    changeState(ItemsState.loading(searchTerm: ''));
  }

  void search(String searchTerm) {
    _getItems.execute().then((items) {
      changeState(ItemsState.loaded(
          state.searchTerm, _mapItemsToState(items)));
    }).catchError((error) {
      changeState(
          ItemsState.error(state.searchTerm, 'Fail to load data'));
    });
  }

  List<PopularItemState> _mapItemsToState(List<Item> items) {

    return items.map((items) =>
        PopularItemState(
        items.id,
        items.image,
        items.code,
        items.price,
        items.height,
        items.width,
        items.weight,
        items.color,
        items.subColor)).toList();
  }
}
