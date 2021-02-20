import 'package:bliss/app/repository/product_repository.dart';
import 'package:get_it/get_it.dart';
import 'data/providers/Items_provider.dart';
import 'data/get_items_list.dart';
import 'repository/items_memory_repository.dart';

final getIt = GetIt.instance;

void init() {
  registerItemsDependencies();
}

void registerItemsDependencies() {
  getIt.registerFactory(() => ItemsBloc(getIt()));
  getIt.registerLazySingleton(() => GetItemList(getIt()));
  getIt.registerLazySingleton<ItemsRepository>(() => ItemsMemoryRepository());
}