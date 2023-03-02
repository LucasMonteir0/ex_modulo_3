import 'package:solid_1/exercicio_03/contracts_imp/i_frete.dart';
import 'package:solid_1/exercicio_03/contracts_imp/i_tabela_desconto.dart';
import 'compra.dart';

class CalculadoraDePrecos {
  CalculadoraDePrecos({required this.frete, required this.desconto});
  final IFrete frete;
  final ITabelaDesconto desconto;



  double calcula(Compra compra) {
    // define o desconto
    // var desconto = 0.0;
    // if (compra.valor > 5000) {
    //   desconto = 0.03;
    // }
    // if (compra.valor > 10000) {
    //   desconto = 0.05;
    // }

    // define o valor do frete
    // var valorFrete = 0.0;
    // switch (compra.cidade) {
    //   case Cidades.feiraDeSantana:
    //   case Cidades.salvador:
    //   case Cidades.santoAmaro:
    //     valorFrete = 0.0;
    //     break;
    //   case Cidades.saoPaulo:
    //   case Cidades.rioDeJaneiro:
    //     valorFrete = 15.0;
    // }

    // calcula o preco da compra
    return compra.valor * (1 - desconto.valor) + frete.valor;
  }
}
