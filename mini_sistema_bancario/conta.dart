import 'agencia.dart';
import 'pessoa.dart';

abstract class Conta {
  String _numero;
  Agencia _agencia;
  Pessoa _pessoa;
  double _saldo;

  Conta(
    this._numero,
    this._agencia,
    this._pessoa,
    this._saldo
  );

  String get numero => this._numero;
  Pessoa get pessoa => this._pessoa;
  Agencia get agencia => this._agencia;
  double get saldo => this._saldo;

  set numero(String numero) {
    this._numero = numero;
  }

  set pessoa(Pessoa pessoa) {
    this._pessoa = pessoa;
  }

  set agencia(Agencia agencia) {
    this._agencia = agencia;
  }

  double obterSaldo() {
    return this._saldo;
  }

  double sacar(double valor) {
    bool podeSacar = (this._saldo >= valor);
    (podeSacar) ? this._saldo -= valor : false;
    return (podeSacar) ? valor : 0;
  }

  bool depositar(double value) {
    this._saldo += value;
    return true;
  }

  bool transfer(double value, Conta destiny) {
    this.sacar(value);
    destiny.depositar(value);
    return true;
  }

  // @override
  //  String toString() {
  //   return "Account: \nNumber of this account: ${this._numero}\n" + 
  //           "\n${this._agency}\n" + 
  //           "---------------------------";
  // }
}