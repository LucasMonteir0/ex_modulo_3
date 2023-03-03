import 'package:solid_1/exercicio_03/compra.dart';

abstract class IFrete {
  IFrete(this.valor, this.compra);

  final double valor;
  final Compra compra;

  void calcFrete();
}
