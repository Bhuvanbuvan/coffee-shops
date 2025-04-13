import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void activateServiceLocator() {
  //dio
  sl.registerLazySingleton<Dio>(() => Dio());
  // //api service
  // sl.registerLazySingleton<ApiService>(() => ApiService(sl<Dio>()));
  // // Remote Data Source
  // sl.registerLazySingleton<ProductApi>(() => ProductApi(sl<ApiService>()));
  //! Repository
  // sl.registerLazySingleton<ProductRepository>(
  //   () => ProductRepositoryImpl(sl<ProductApi>()),
  // );
}
