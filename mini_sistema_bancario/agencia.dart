import 'endereco.dart';
import 'gerente.dart';

class Agencia {
  int _number;
  Endereco _endereco;
  Gerente _gerente;

  Agencia(
    this._number,
    this._endereco,
    this._gerente
  );

  int get number => this._number;
  Gerente get gerente => this._gerente;
  Endereco get endereco => this._endereco;

  set number(int number){
    this._number = number;
  }

  set endereco(Endereco endereco){
    this._endereco = endereco;
  }

  set gerente(Gerente gerente) {
    this._gerente = gerente;
  }

  // @override
  // String toString() {
  //   return "Agency: \nNumber agency: ${this._number}\n\n${this._address}\n" + 
  //           "---------------------------" +
  //           "\n${this._manager}";
  // } 
}