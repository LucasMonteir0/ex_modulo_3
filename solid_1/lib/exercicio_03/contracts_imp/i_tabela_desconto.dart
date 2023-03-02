import 'package:solid_1/exercicio_03/compra.dart';

abstract class ITabelaDesconto {
  ITabelaDesconto(this.valor);
  final double valor;


  void calcDesconto(Compra compra);
}