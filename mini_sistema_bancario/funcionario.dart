import 'endereco.dart';
import 'pessoa_fisica.dart';

class Funcionario extends PessoaFisica {
  int _matricula;
  double _salario;
  String _cargaHoraria;

  Funcionario(
    this._matricula,
    this._salario,
    this._cargaHoraria,
    String vName,
    String vCpf,
    String vRg,
    String vDataDeNascimento,
    String vTelefone,
    Endereco vEndereco,
    [String? vEmail]
  ) : super(vName,
            vCpf,
            vRg,
            vDataDeNascimento,
            vTelefone,
            vEndereco,
            vEmail);

  int get matricula => this._matricula;

  set matricula(int value) => this._matricula = value;

  double get salario => this._salario;

  set salario(double value) => this._salario = value;

  get cargaHoraria => this._cargaHoraria;

  set cargaHoraria( value) => this._cargaHoraria = value;
}