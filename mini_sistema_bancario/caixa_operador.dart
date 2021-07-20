import 'funcionario.dart';
import 'endereco.dart';

class CaixaOperador extends Funcionario {

  String _turno;
  int _guiche;

  CaixaOperador(
    this._turno,
    this._guiche,
    int vMatricula,
    double vSalario,
    String vCargaHoraria,
    String vTurno,
    String vName,
    String vCpf,
    String vRg,
    String vDataDeNascimento,
    String vTelefone,
    Endereco vEndereco,
    [String? vEmail]
  ) : super(vMatricula,
            vSalario,
            vCargaHoraria,
            vName,
            vCpf,
            vRg,
            vDataDeNascimento,
            vTelefone,
            vEndereco,
            vEmail);

  String get turno => this._turno;

  set turno(String value) => this._turno = value;

  int get guiche => this._guiche;

  set guiche(int value) => this._guiche = value;
}