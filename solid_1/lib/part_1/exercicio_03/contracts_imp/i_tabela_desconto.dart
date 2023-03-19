import 'package:solid_1/part_1/exercicio_03/compra.dart';

abstract class ITabelaDesconto {
  ITabelaDesconto(this.valor, this.compra);
  final double valor;
  final Compra compra;


  void calcDesconto();
}