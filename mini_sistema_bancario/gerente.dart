import 'funcionario.dart';
import 'endereco.dart';

class Gerente extends Funcionario {
  int? _ramal;

  Gerente(
    this._ramal,
    int vMatricula,
    double vSalario,
    String vCargaHoraria,
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

  get ramal => this._ramal;

  set ramal( value) => this._ramal = value;

}