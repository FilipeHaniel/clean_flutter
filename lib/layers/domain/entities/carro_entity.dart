class CarroEntity {
  String placa;
  int qtdportas;
  double valor;

  CarroEntity({
    required this.placa,
    required this.qtdportas,
    required this.valor,
  });

  double get valorReal {
    return valor * qtdportas;
  }

  setLogica() {
    if (valorReal > 1000.00) {
      valor * 2;
    }
  }
}
