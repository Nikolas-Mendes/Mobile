import 'conta.dart';
import 'agencia.dart';
import 'pessoa.dart';

class ContaCorrente extends Conta {
  double _limite;

  ContaCorrente(
    this._limite,
    String vNumero,
    Agencia vAgencia,
    Pessoa vPessoa,
    double vSaldo
  ) : super(vNumero,vAgencia,vPessoa,vSaldo);

  double get limite => this._limite;

  @override
  double sacar(double valor) {
    double valorSaque = (this.obterSaldo() + this._limite>=valor) ? valor : 0;
    return super.sacar(valorSaque);
  }
}