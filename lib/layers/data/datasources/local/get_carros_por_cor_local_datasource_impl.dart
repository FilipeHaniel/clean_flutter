import 'package:clean_flutter/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_flutter/layers/data/dtos/carro_dto.dart';

class GetCarrosPorCorLocalDatasourceImpl implements GetCarrosPorCorDatasource {
  final jsonVermelho = {
    'placa': 'ABC123',
    'quantidadeDePortas': 4,
    'valorFinal': 5000.00,
  };

  final jsonAny = {
    'placa': 'QWE789',
    'quantidadeDePortas': 2,
    'valorFinal': 2000.00,
  };

  @override
  CarroDto call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroDto.fromMap(jsonVermelho);
    }

    return CarroDto.fromMap(jsonAny);
  }
}
