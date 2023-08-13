import 'package:clean_flutter/layers/data/datasources/local/get_carros_por_cor_local_datasource_impl.dart';
import 'package:clean_flutter/layers/data/repositories/get_carros_por_cor_repository_impl.dart';
import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';
import 'package:clean_flutter/layers/domain/usecases/get_carro_por_cor/get_carro_por_cor_usecase.dart';
import 'package:clean_flutter/layers/domain/usecases/get_carro_por_cor/get_carro_por_cor_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Deve retornar uma instância de carro, quando passado qualquer cor', () {
    GetCarroPorCorUsecase useCase = GetCarroPorCorUsecaseImpl(
      GetCarrosPorCorRepositoryImpl(GetCarrosPorCorLocalDatasourceImpl()),
    );

    var result = useCase('azul');

    late CarroEntity resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro se quatro portas quando vermelho', () {
    GetCarroPorCorUsecase useCase = GetCarroPorCorUsecaseImpl(
      GetCarrosPorCorRepositoryImpl(GetCarrosPorCorLocalDatasourceImpl()),
    );

    var result = useCase('vermelho');

    late CarroEntity resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect.qtdportas, 4);
  });

  test(
      'Deve retornar um carro de duas portas quando qualquer cor exceto vermelho',
      () {
    GetCarroPorCorUsecase useCase = GetCarroPorCorUsecaseImpl(
      GetCarrosPorCorRepositoryImpl(GetCarrosPorCorLocalDatasourceImpl()),
    );

    var result = useCase('verde');

    late CarroEntity resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect.qtdportas, 2);
  });
}
