import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarroPorCorUsecase {
  Either<Exception, CarroEntity> call(String cor);
}
