import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';
import 'package:clean_flutter/layers/domain/usecases/get_carro_por_cor/get_carro_por_cor_usecase.dart';

class GetCarroPorCorUsecaseImpl implements GetCarroPorCorUsecase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'ABC123', qtdportas: 4, valor: 50000.00);
    }

    return CarroEntity(placa: 'QWE789', qtdportas: 2, valor: 20000.00);
  }
}
