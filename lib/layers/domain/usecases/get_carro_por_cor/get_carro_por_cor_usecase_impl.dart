import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';
import 'package:clean_flutter/layers/domain/repositories/get_carro_por_cor_repository.dart';
import 'package:clean_flutter/layers/domain/usecases/get_carro_por_cor/get_carro_por_cor_usecase.dart';

class GetCarroPorCorUsecaseImpl implements GetCarroPorCorUsecase {
  final GetCarroPorCorRepository _getCarroPorCorRepository;

  GetCarroPorCorUsecaseImpl(this._getCarroPorCorRepository);

  @override
  CarroEntity call(String cor) {
    return _getCarroPorCorRepository(cor);
  }
}
