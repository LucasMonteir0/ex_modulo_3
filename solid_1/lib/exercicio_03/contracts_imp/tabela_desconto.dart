import 'package:solid_1/exercicio_03/compra.dart';
import 'package:solid_1/exercicio_03/contracts_imp/i_tabela_desconto.dart';

class TabelaDesconto implements ITabelaDesconto{

  double desconto = 0.0;

  @override
  void calcDesconto(Compra compra) {
    if (compra.valor > 5000) {
      desconto = 0.03;
    }
    if (compra.valor > 10000) {
      desconto = 0.05;
    }
  }

  @override
  double get valor => desconto;

}