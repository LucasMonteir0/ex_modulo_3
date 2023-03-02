import 'package:solid_1/exercicio_03/compra.dart';

abstract class IFrete {
  IFrete(this.valor);

  final double valor;

  void calcFrete(Compra compra);
}
