import 'dart:convert';
import 'package:bliss/app/data/localdata/items_list.dart';
import 'package:bliss/app/repository/product_repository.dart';
import '../data/models/Items.dart';

class ItemsMemoryRepository implements ItemsRepository {
  @override
  Future<List<Item>> get() async {
    return Future.delayed(
        const Duration(seconds: 2), () => _parse(jsonDecode(items))
    );
  }

  List<Item> _parse(List<dynamic> json) {
    return json.map((jsonItem) => _parseItem(jsonItem)).toList();
  }

  Item _parseItem(Map<String, dynamic> json) {
    return Item(
      json['id'],
      json['code'],
      json['image'],
      json['color']
    );
  }
}

