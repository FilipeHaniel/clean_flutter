// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_flutter/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_flutter/layers/domain/entities/carro_entity.dart';
import 'package:clean_flutter/layers/domain/repositories/get_carro_por_cor_repository.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorCorRepositoryImpl implements GetCarroPorCorRepository {
  final GetCarrosPorCorDatasource _getCarrosPorCorDatasource;

  GetCarrosPorCorRepositoryImpl(this._getCarrosPorCorDatasource);

  @override
  Either<Exception, CarroEntity> call(String cor) {
    return _getCarrosPorCorDatasource(cor);
  }
}
