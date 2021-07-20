import 'endereco.dart';

abstract class Pessoa {
  String _telephoneForContact;
  String? _email;
  Endereco _endereco;

  Pessoa(
    this._telephoneForContact,
    this._endereco,
    [this._email]
  );

  String get telephone => this._telephoneForContact;
  String? get email => this._email;
  Endereco get endereco => this._endereco;

  set telephone(String telephone) {
    this._telephoneForContact = telephone;
  }

  set email(String? email) {
    this._email = email;
  }

  set endereco(Endereco endereco) {
    this._endereco = endereco;
  }

  // @override 
  // String toString() {
  //   return "";
  // } 
}