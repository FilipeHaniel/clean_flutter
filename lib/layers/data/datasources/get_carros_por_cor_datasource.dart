import 'package:clean_flutter/layers/data/dtos/carro_dto.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarrosPorCorDatasource {
  Either<Exception, CarroDto> call(String cor);
}
