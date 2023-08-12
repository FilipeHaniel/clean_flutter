import 'package:clean_flutter/layers/data/datasources/local/get_carros_por_cor_local_datasource_impl.dart';
import 'package:clean_flutter/layers/data/repositories/get_carros_por_cor_repository_impl.dart';
import 'package:clean_flutter/layers/data/repositories/salvar_carro_favorito_repository_impl.dart';
import 'package:clean_flutter/layers/domain/usecases/get_carro_por_cor/get_carro_por_cor_usecase_impl.dart';
import 'package:clean_flutter/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase._impl.dart';
import 'package:clean_flutter/layers/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';

class CarroPage extends StatelessWidget {
  CarroPage({super.key});

  CarroController controller = CarroController(
    GetCarroPorCorUsecaseImpl(
      GetCarrosPorCorRepositoryImpl(
        GetCarrosPorCorLocalDatasourceImpl(),
      ),
    ),
    SalvarCarroFavoritoUsecaseImpl(
      SalvarCarroFavoritoRepositoryImpl(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carro')),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
