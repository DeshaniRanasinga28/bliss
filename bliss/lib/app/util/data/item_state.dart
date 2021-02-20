import 'package:flutter/widgets.dart';

abstract class ItemsState {
  final String searchTerm;

  ItemsState(this.searchTerm);

  factory ItemsState.loading({String searchTerm}) => LoadingItemsState(searchTerm: searchTerm);

  factory ItemsState.loaded(String searchTerm,
      List<PopularItemState> items) => LoadedItemsState(searchTerm: searchTerm, items: items);

  factory ItemsState.error(
      String searchTerm,
      String message) =>
      ErrorItemsState(searchTerm: searchTerm, message: message);
}

class LoadingItemsState extends ItemsState {
  LoadingItemsState({String searchTerm}) :super(searchTerm);
}

class LoadedItemsState extends ItemsState {
  final List<PopularItemState> items;

  LoadedItemsState({String searchTerm, @required this.items})
      :super(searchTerm);
}

class ErrorItemsState<T> extends ItemsState {
  final String message;

  ErrorItemsState({@required String searchTerm, @required this.message})
      :super(searchTerm);
}

class PopularItemState {
  final String id;
  final String image;
  final String code;
  final double price;
  final String height;
  final String width;
  final String weight;
  final String color;
  final String subColor;

  PopularItemState(
      this.id, this.image, this.code, this.price, this.height, this.width, this.weight, this.color, this.subColor);

}