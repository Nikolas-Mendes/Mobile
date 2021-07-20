import 'pessoa.dart';
import 'endereco.dart';

class PessoaFisica extends Pessoa {
  String _nome;
  String _cpf;
  String _rg;
  String _dataDeNascimento;

  PessoaFisica(
    this._nome,
    this._cpf,
    this._rg,
    this._dataDeNascimento,
    String vTelefone,
    Endereco vEndereco,
    [String? vEmail]
  ) : super(vTelefone,vEndereco,vEmail);

  String get nome => this._nome;
  String get cpf => this._cpf;
  String get rg => this._rg;
  String get dataDeNascimento => this._dataDeNascimento;

  set nome(String nome) {
    this._nome = nome;
  }

  set cpf(String cpf) {
    this._cpf = cpf;
  }

  set rg(String rg) {
    this._rg = rg;
  }

  set dataDeNascimento(String dataDeNascimento) {
    this._dataDeNascimento = dataDeNascimento;
  }
}