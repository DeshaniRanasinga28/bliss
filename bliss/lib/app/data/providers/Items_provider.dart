import 'package:bliss/app/bloc/items_state.dart';
import 'package:bliss/app/data/get_items_list.dart';
import 'package:bliss/app/data/models/Items.dart';
import 'package:intl/intl.dart';
import '../../bloc/bloc.dart';

class ItemsBloc extends Bloc<ItemsState> {
  final GetItemList _getItemList;

  ItemsBloc(this._getItemList) {
    changeState(ItemsState.loading(searchTerm: ''));
  }

  void getItemList() {
    _getItemList.execute().then((items) {
      changeState(
          ItemsState.loaded(state.searchTerm, _mapItemsToState(items))
      );
    }).catchError((error) {
      changeState(
          ItemsState.error(state.searchTerm, 'Data Loading Error'));
    });
  }

  List<PopularItemState> _mapItemsToState(List<Item> items) {
    return items.map((items) => PopularItemState(
        items.id,
        items.code,
        items.image,
        items.color
    )).toList();
  }
}
