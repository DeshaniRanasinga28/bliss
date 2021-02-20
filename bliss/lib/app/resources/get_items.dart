import 'package:bliss/app/models/item.dart';
import 'package:bliss/app/resources/repository/product_repository.dart';

class GetItems {
  final ItemsRepository _itemsRepository;

  GetItems(this._itemsRepository);

  Future<List<Item>> execute() {
    return _itemsRepository.get();
  }
}