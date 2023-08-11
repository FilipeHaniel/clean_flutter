import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';
import 'package:clean_flutter/layers/domain/usecases/get_carro_por_cor/get_carro_por_cor_usecase.dart';
import 'package:clean_flutter/layers/domain/usecases/get_carro_por_cor/get_carro_por_cor_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Deve retornar uma instãncia de carro, quando passado qualquer cor', () {
    GetCarroPorCorUsecase useCase = GetCarroPorCorUsecaseImpl();

    var result = useCase('azul');

    expect(result, isInstanceOf<CarroEntity>());
  });
}
