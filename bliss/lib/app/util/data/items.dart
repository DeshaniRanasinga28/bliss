import 'dart:convert';
import 'package:bliss/app/models/item.dart';
import 'package:bliss/app/resources/repository/product_repository.dart';

const items = '''[
  {
    "id": "1",
    "image": "images/bag-one.png":
    "code": "BHB003",
    "price": 1300.00,
    "height": "60 cm",
    "width": "35 cm",
    "weight": "850 g",
    "color": "Color(0xFFCCC4FF)",
    "subColor" : "Color(0xFFF3E7FF)"
  },
  {
    "id": "1",
    "image": "images/bag-two.png":
    "code": "BHB012",
    "price": 1500.00,
    "height": "55 cm",
    "width": "40 cm",
    "weight": "1.3 kg",
    "color": "Color(0xFFB0AEFF)",
    "subColor" : "Color(0xFFFFE3FF)"
  }
]''';

class ItemsMemoryRepository implements ItemsRepository {
  @override
  Future<List<Item>> get() async {
    return Future.delayed(
        const Duration(seconds: 2), () => _parse(jsonDecode(items))
    );
  }

  List<Item> _parse(List<dynamic> json) {
    return json.map((jsonItem) => _parseItems(jsonItem)).toList();
  }

  Item _parseItems(Map<String, dynamic> json) {
    return Item(
      json['id'],
      json['image'],
      json['code'],
      json['price'],
      json['height'],
      json['width'],
      json['weight'],
      json['color'],
      json['subColor']);
  }
}
