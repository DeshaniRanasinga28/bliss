import 'package:bliss/app/models/item.dart';

abstract class ItemsRepository {
  Future<List<Item>> get();
}