import 'package:bliss/app/models/items.dart';

abstract class ItemsRepository {
  Future<List<Items>> get();
}