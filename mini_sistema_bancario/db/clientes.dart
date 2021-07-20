import '../pessoa.dart';

class Clientes {
  static List<Pessoa> _clientes = [];

  void cadastrar(Pessoa clientes) {
    _clientes.add(clientes);
  }

  Iterable<Pessoa> buscar(String telephone) { 
    return _clientes.where((objClientes) => objClientes.telephone == telephone);
  }

  List<Pessoa> listar() {
    return _clientes;
  }

  void remover(String telephone) {
    Iterable<Pessoa> listaDePessoas = buscar(telephone);
    listaDePessoas.forEach(
      (pessoa) {
        _clientes.remove(pessoa);
      }
    );
  }

  void editar(Pessoa objPessoa) {
    Iterable<Pessoa> listaDePessoa = buscar(objPessoa.telephone);

    listaDePessoa.forEach(
      (antigoPessoa){
        antigoPessoa = objPessoa;
      }
    );
  }
}