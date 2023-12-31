import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';
import 'package:clean_flutter/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_flutter/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:dartz/dartz.dart';

class SalvarCarroFavoritoUsecaseImpl implements SalvarCarroFavoritoUsecase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritoUsecaseImpl(this._salvarCarroFavoritoRepository);

  @override
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();

    return await _salvarCarroFavoritoRepository(carroEntity);
  }
}
