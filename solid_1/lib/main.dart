import 'part_1/exercicio_03/calculadora_de_precos.dart';
import 'part_1/exercicio_03/cidades.dart';
import 'part_1/exercicio_03/compra.dart';
import 'part_1/exercicio_03/contracts_imp/frete.dart';
import 'part_1/exercicio_03/contracts_imp/tabela_desconto.dart';



void main() {
  final compra1 = Compra(
    codigoProduto: 1,
    valor: 10450.0,
    cidade: Cidades.rioDeJaneiro,
  );

  final frete = Frete(compra1);
  final desconto = TabelaDesconto(compra1);
  final calculadora = CalculadoraDePrecos(frete: frete, desconto: desconto, compra: compra1 );



  final precoCompra = calculadora.calcula();

  print('Valor da compra ficou $precoCompra');
}
