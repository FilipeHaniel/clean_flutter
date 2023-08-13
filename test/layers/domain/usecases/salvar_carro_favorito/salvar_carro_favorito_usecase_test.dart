import 'package:clean_flutter/layers/data/repositories/salvar_carro_favorito_repository_impl.dart';
import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';
import 'package:clean_flutter/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase._impl.dart';
import 'package:clean_flutter/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUsecase usecase =
        SalvarCarroFavoritoUsecaseImpl(SalvarCarroFavoritoRepositoryImpl());

    var carro = CarroEntity(placa: 'ABC123', qtdportas: 2, valor: 1);

    var result = await usecase(carro);

    late bool resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, true);
  });

  test('Espero que não salve o carro quando o valor for menor ou igual a zero',
      () async {
    SalvarCarroFavoritoUsecase usecase =
        SalvarCarroFavoritoUsecaseImpl(SalvarCarroFavoritoRepositoryImpl());

    var carro = CarroEntity(placa: 'ABC123', qtdportas: 2, valor: 0);

    var result = await usecase(carro);

    late bool resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, false);
  });
}
