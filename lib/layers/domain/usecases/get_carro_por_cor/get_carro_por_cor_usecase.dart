import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';

abstract class GetCarroPorCorUsecase {
  CarroEntity call(String cor);
}
