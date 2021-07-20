import '../conta.dart';

class Contas {
  static List<Conta> _contas = [];

  void cadastrar(Conta contas) {
    _contas.add(contas);
  }

  Iterable<Conta> buscar(String numero) { 
    return _contas.where((objConta) => objConta.numero == numero);
  }

  List<Conta> listar() {
    return _contas;
  }

  void remover(String numero) {
    Iterable<Conta> listaDeContas = buscar(numero);
    listaDeContas.forEach(
      (conta){
        _contas.remove(conta);
      }
    );
  }

  void editar(Conta objConta) {
    Iterable<Conta> listaDeContas = buscar(objConta.numero);

    listaDeContas.forEach(
      (antigaConta){
        antigaConta = objConta;
      }
    );
  }
}