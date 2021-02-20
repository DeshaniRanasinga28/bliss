import 'package:bliss/app/repository/product_repository.dart';

import 'models/Items.dart';

class GetItemList {
  final ItemsRepository _itemsRepository;

  GetItemList(this._itemsRepository);

  Future<List<Item>> execute() {
    return _itemsRepository.get();
  }
}
