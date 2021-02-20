import 'package:bliss/app/models/item.dart';
import 'package:bliss/app/resources/get_items.dart';
import 'package:bliss/app/resources/repository/product_repository.dart';
import 'package:bliss/app/util/data/items.dart';
import 'package:bliss/app/util/data/items_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void init() {
  registerProductDependencies();
}

void registerProductDependencies() {
  getIt.registerFactory(() => ItemsBloc(getIt()));

  getIt.registerLazySingleton(() => GetItems(getIt()));

  getIt.registerLazySingleton<ItemsRepository>(() => ItemsMemoryRepository());
}