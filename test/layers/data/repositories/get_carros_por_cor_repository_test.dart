import 'package:clean_flutter/layers/data/repositories/get_carros_por_cor_repository_impl.dart';
import 'package:clean_flutter/layers/domain/repositories/get_carro_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarroPorCorRepository repository = GetCarrosPorCorRepositoryImpl();

  test('Devolva um carro independente da cor', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}
