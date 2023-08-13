import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SalvarCarroFavoritoRepository {
  Future<Either<Exception, bool>> call(CarroEntity carroEntity);
}
