import 'package:solid_1/exercicio_03/cidades.dart';
import 'package:solid_1/exercicio_03/compra.dart';
import 'package:solid_1/exercicio_03/contracts_imp/i_frete.dart';

class Frete implements IFrete {

  double frete = 0.0;

  @override
  double get valor => frete;

  @override
  void calcFrete(Compra compra) {
    switch (compra.cidade) {
      case Cidades.feiraDeSantana:
      case Cidades.salvador:
      case Cidades.santoAmaro:
        frete = 0.0;
        break;
      case Cidades.saoPaulo:
      case Cidades.rioDeJaneiro:
        frete = 15.0;
    }
  }


}
