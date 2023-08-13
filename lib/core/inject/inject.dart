import 'package:clean_flutter/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_flutter/layers/data/datasources/local/get_carros_por_cor_local_datasource_impl.dart';
import 'package:clean_flutter/layers/data/repositories/get_carros_por_cor_repository_impl.dart';
import 'package:clean_flutter/layers/data/repositories/salvar_carro_favorito_repository_impl.dart';
import 'package:clean_flutter/layers/domain/repositories/get_carro_por_cor_repository.dart';
import 'package:clean_flutter/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_flutter/layers/domain/usecases/get_carro_por_cor/get_carro_por_cor_usecase.dart';
import 'package:clean_flutter/layers/domain/usecases/get_carro_por_cor/get_carro_por_cor_usecase_impl.dart';
import 'package:clean_flutter/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase._impl.dart';
import 'package:clean_flutter/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:clean_flutter/layers/presentation/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    // datasources
    getIt.registerLazySingleton<GetCarrosPorCorDatasource>(
        () => GetCarrosPorCorLocalDatasourceImpl());
    // repositories
    getIt.registerLazySingleton<GetCarroPorCorRepository>(
        () => GetCarrosPorCorRepositoryImpl(getIt()));

    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
        () => SalvarCarroFavoritoRepositoryImpl());
    // usecases
    getIt.registerLazySingleton<GetCarroPorCorUsecase>(
        () => GetCarroPorCorUsecaseImpl(getIt()));

    getIt.registerLazySingleton<SalvarCarroFavoritoUsecase>(
        () => SalvarCarroFavoritoUsecaseImpl(getIt()));

    // controllers
    getIt.registerFactory<CarroController>(
        () => CarroController(getIt(), getIt()));
  }
}
