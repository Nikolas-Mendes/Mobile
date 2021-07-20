import 'agencia.dart';
import 'pessoa.dart';
import 'conta.dart';

class ContaPoupanca extends Conta {
  int _dataRendimento;
  double _percentualDeRendimento;

  ContaPoupanca(
    this._dataRendimento,
    this._percentualDeRendimento,
    String vNumero,
    Agencia vAgencia,
    Pessoa vPessoa,
    double vSaldo
  ) : super(vNumero,vAgencia,vPessoa,vSaldo);

  int get dataRendimento => this._dataRendimento;
  double get percentualDeRendimento => this._percentualDeRendimento;

  void render() {
    double rendimento = this.obterSaldo() * this._percentualDeRendimento;
    this.depositar(rendimento);
  }
}