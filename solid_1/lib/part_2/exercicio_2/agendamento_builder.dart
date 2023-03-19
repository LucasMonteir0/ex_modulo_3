import 'package:solid_1/part_2/exercicio_2/agendamento.dart';
import 'package:solid_1/part_2/exercicio_2/barbeiros.dart';
import 'package:solid_1/part_2/exercicio_2/servicos.dart';

class AgendamentoBuilder {
  String? _nomeCliente;
  String? _telefone;
  Barbeiros? _barbeiro;
  List<Servicos> _servicos = [];
  DateTime? _dataHora;

  AgendamentoBuilder();

  void setNomeCliente(String nomeCliente) {
    _nomeCliente = nomeCliente;
  }

  void setTelefone(String telefone) {
    _telefone = telefone;
  }

  void setBarbeiro(Barbeiros barbeiro) {
    _barbeiro = barbeiro;
  }

  void setServicos(List<Servicos> servicos) {
    _servicos = servicos;
  }

  void setDataHora(DateTime dataHora) {
    _dataHora = dataHora;
  }

  Agendamento build() {
    if (_nomeCliente == null) {
      throw Exception('Nome não definido');
    }

    if (_dataHora == null) {
      throw Exception('Data e Hora não definida');
    }

    if (_servicos.isEmpty) {
      throw Exception('Serviços não definidos');
    }

    return Agendamento(
      nomeCliente: _nomeCliente!,
      telefone: _telefone,
      barbeiro: _barbeiro ?? Barbeiros.semPreferencia,
      servicos: _servicos,
      dataHora: _dataHora!,
    );
  }
}

