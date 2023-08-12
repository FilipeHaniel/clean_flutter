import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  @override
  String placa;
  int quantidadeDePortas;
  double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFinal,
  }) : super(
          valor: valorFinal,
          qtdportas: quantidadeDePortas,
          placa: placa,
        );

  Map toMap() {
    return {
      'placa': placa,
      'quantidadeDePortas': quantidadeDePortas,
      'valorFinal': valorFinal,
    };
  }

  static CarroDto fromMap(Map map) {
    return CarroDto(
      placa: map['placa'],
      quantidadeDePortas: map['quantidadeDePortas'],
      valorFinal: map['valorFinal'],
    );
  }
}
