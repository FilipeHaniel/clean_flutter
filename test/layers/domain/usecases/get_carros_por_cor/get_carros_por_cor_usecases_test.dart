import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';
import 'package:clean_flutter/layers/domain/repositories/get_carro_por_cor_repository.dart';
import 'package:clean_flutter/layers/domain/usecases/get_carro_por_cor/get_carro_por_cor_usecase.dart';
import 'package:clean_flutter/layers/domain/usecases/get_carro_por_cor/get_carro_por_cor_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarroPorCorRepositoryImpl implements GetCarroPorCorRepository {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'ABC123', qtdportas: 4, valor: 5000.00);
    }

    return CarroEntity(placa: 'QWE789', qtdportas: 2, valor: 2000.000);
  }
}

void main() {
  test('Deve retornar uma instância de carro, quando passado qualquer cor', () {
    GetCarroPorCorUsecase useCase =
        GetCarroPorCorUsecaseImpl(GetCarroPorCorRepositoryImpl());

    var result = useCase('azul');

    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro se quatro portas quando vermelho', () {
    GetCarroPorCorUsecase useCase =
        GetCarroPorCorUsecaseImpl(GetCarroPorCorRepositoryImpl());

    var result = useCase('vermelho');

    expect(result.qtdportas, 4);
  });

  test(
      'Deve retornar um carro de duas portas quando qualquer cor exceto vermelho',
      () {
    GetCarroPorCorUsecase useCase =
        GetCarroPorCorUsecaseImpl(GetCarroPorCorRepositoryImpl());

    var result = useCase('verde');

    expect(result.qtdportas, 2);
  });
}
