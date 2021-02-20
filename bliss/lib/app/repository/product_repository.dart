import 'package:bliss/app/data/models/Items.dart';

abstract class ItemsRepository {
  Future<List<Item>> get();
}
