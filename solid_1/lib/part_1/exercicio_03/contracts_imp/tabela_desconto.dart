import 'package:solid_1/part_1/exercicio_03/compra.dart';
import 'package:solid_1/part_1/exercicio_03/contracts_imp/i_tabela_desconto.dart';

class TabelaDesconto implements ITabelaDesconto{
  TabelaDesconto(this._compra);

  double _desconto = 0.0;
  final Compra _compra;


  @override
  void calcDesconto() {
    if (_compra.valor > 5000) {
      _desconto = 0.03;
    }
    if (_compra.valor > 10000) {
      _desconto = 0.05;
    }
  }

  @override
  double get valor => _desconto;

  @override
  Compra get compra => _compra ;

}