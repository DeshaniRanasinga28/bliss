
import 'package:bliss/app/global/colors.dart';
import 'package:bliss/app/model/item.dart';
import 'package:bliss/app/util/api/item_api_request.dart';
import 'package:bliss/app/util/check_connection.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ItemProviderModel with ChangeNotifier {
  bool isLoading = true;
  Data itemData;

  List<Item> cartList = [];
  List<Item> searchList = [];

  Item selectedItem = Item();

  List<Item> bagList = [];
  List<Item> purseList = [];
  double total = 0.0;

  getItemsData(context) {
    checkNetworkConnection(context).then((value) async {
      isLoading = true;
      notifyListeners();
      if (value == true) {
        await getAllItemDataList(context).then((res) {
          if (res != null) {
            itemData = res;
          }
        });
        addToCategory(context, itemData.data);
        isLoading = false;
        notifyListeners();
      } else {
        Toast.show('Please check your Internet connection', context, duration: 2, backgroundColor: red);
      }
    });
  }


  addFavoriteProducts(context, favoriteProducts, index) {
    itemData.data[index].favoriteProducts = favoriteProducts;
    notifyListeners();
  }

  setSingleItem(item) => selectedItem = item;


  qutIncrement(context, index) {
    itemData.data[index].quantity++;
    notifyListeners();
  }

  qutDecrement(context, index) {
    if (itemData.data[index].quantity > 0) {
      itemData.data[index].quantity--;
    }
    notifyListeners();
  }



  ///add single item to cart
  addToCart(context, item) {
    if (cartList.contains(item)) {
    } else {
      cartList.add(item);
      print("cart length ${cartList.length.toString()}");
    }
    notifyListeners();
  }

  ///remove item from the cart
  removeFromCart(context, item) {
    if (cartList.contains(item)) {
      cartList.remove(item);
      calculateTotal(context);
      notifyListeners();
    }
  }

  ///divide items list in to categories
  addToCategory(context, items) {
    for (Item c in items) {
      if (c.category == 'bag') {
        bagList.add(c);
        notifyListeners();
      } else {
        purseList.add(c);
        notifyListeners();
      }
    }
  }

  ///calculate the sum of the items in the cart list
  calculateTotal(context) {
    total = 0;
    for (var i = 0; i < cartList.length; i++) {
      total += double.parse(cartList[i].price) *
          double.parse(cartList[i].quantity.toString());
    }
    notifyListeners();
  }

  ///search for a keyword specific item from the items list
  searchItems(context, keyword) {
    searchList.clear();
    for (var i = 0; i < itemData.data.length; i++) {
      if (itemData.data[i].code == keyword) {
        searchList.add(itemData.data[i]);
        print(searchList.length);
        notifyListeners();
      }
    }
  }
}
