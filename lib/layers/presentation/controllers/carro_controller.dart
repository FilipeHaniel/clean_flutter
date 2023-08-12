import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';
import 'package:clean_flutter/layers/domain/usecases/get_carro_por_cor/get_carro_por_cor_usecase.dart';
import 'package:clean_flutter/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class CarroController {
  final GetCarroPorCorUsecase _getCarroPorCorUsecase;
  final SalvarCarroFavoritoUsecase _salvarCarroFavoritoUsecase;

  late CarroEntity carro;

  CarroController(
    this._getCarroPorCorUsecase,
    this._salvarCarroFavoritoUsecase,
  ) {
    getCarroPorCor('Vermelho');
  }

  getCarroPorCor(String cor) {
    carro = _getCarroPorCorUsecase(cor);
  }

  salvarCarroFavorito(CarroEntity carro) async {
    var result = await _salvarCarroFavoritoUsecase(carro);
  }
}
