import 'package:clean_flutter/layers/data/dtos/carro_dto.dart';
import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';
import 'package:clean_flutter/layers/domain/repositories/get_carro_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImpl implements GetCarroPorCorRepository {
  @override
  CarroEntity call(String cor) {
    // Chamamos a api e ela respondeu um json
    var json = {
      'placa': 'ABC123',
      'quantidadeDePortas': 2,
      'valorFinal': 1000.00,
    };

    return CarroDto.fromMap(json);
  }
}
