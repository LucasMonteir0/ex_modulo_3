import 'package:solid_1/exercicio_03/calculadora_de_precos.dart';
import 'package:solid_1/exercicio_03/cidades.dart';
import 'package:solid_1/exercicio_03/compra.dart';
import 'package:solid_1/exercicio_03/contracts_imp/frete.dart';
import 'package:solid_1/exercicio_03/contracts_imp/tabela_desconto.dart';



void main() {
  final frete = Frete();
  final desconto = TabelaDesconto();
  final calculadora = CalculadoraDePrecos(frete: frete, desconto: desconto);

  final compra1 = Compra(
    codigoProduto: 1,
    valor: 10000.0,
    cidade: Cidades.santoAmaro,
  );

  final precoCompra = calculadora.calcula(compra1);

  print('Valor da compra ficou $precoCompra');
}
