import 'package:clean_flutter/layers/data/dtos/carro_dto.dart';

abstract class GetCarrosPorCorDatasource {
  CarroDto call(String cor);
}
