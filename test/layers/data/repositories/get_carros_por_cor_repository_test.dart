import 'package:clean_flutter/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_flutter/layers/data/datasources/local/get_carros_por_cor_local_datasource_impl.dart';
import 'package:clean_flutter/layers/data/repositories/get_carros_por_cor_repository_impl.dart';
import 'package:clean_flutter/layers/domain/repositories/get_carro_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  GetCarrosPorCorDatasource datasource = GetCarrosPorCorLocalDatasourceImpl();

  GetCarroPorCorRepository repository = GetCarrosPorCorRepositoryImpl(datasource);

  test('Devolva um carro independente da cor', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}
