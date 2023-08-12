
import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';

abstract class GetCarroPorCorRepository {
  CarroEntity call(String cor);
}
