import 'package:solid_1/part_1/exercicio_03/contracts_imp/i_frete.dart';
import 'package:solid_1/part_1/exercicio_03/contracts_imp/i_tabela_desconto.dart';
import 'compra.dart';

class CalculadoraDePrecos {
  CalculadoraDePrecos({
    required this.frete,
    required this.desconto,
    required this.compra,
  });

  final IFrete frete;
  final ITabelaDesconto desconto;
  final Compra compra;

  double calcula() {
    frete.calcFrete();
    desconto.calcDesconto();
    return compra.valor * (1 - desconto.valor) + frete.valor;
  }
}
