import 'package:clean_flutter/core/inject/inject.dart';
import 'package:clean_flutter/layers/presentation/ui/pages/carro_page.dart';
import 'package:flutter/material.dart';

void main() {
  Inject.init();

  runApp(
    MaterialApp(
      home: CarroPage(),
    ),
  );
}
