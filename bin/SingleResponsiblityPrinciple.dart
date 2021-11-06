void main(List<String> arguments) {
  print('Estudando Solid!');
}

// exemplo do principio responsabilidade unica ferido

class ContaCorrente {
  validarConta() {
    // logica que valida a existencia da conta
  }

  salvarModificacoes() {
    // logica que edita informações de uma conta
  }
}

// Single Responsiblity Principle fala sobre uma classe fazer apenas aquilo que realmente deve fazer - um funcionario nao deve saber excluir um produto,
//ele deve apenas ter o dominio dos seus dados

class ContaCorrenteRepository {
  void salvarModificacoes() => print('salvando modificaçoes');
}

class ContaCorrente2 {
  final ContaCorrenteRepository _repository = ContaCorrenteRepository();

  validarConta() {
    // logica que valida a existencia da conta
  }

  // minha conta corrente, nao sabe salvar no banco, mas sabe que existe um repositorio para isso
  void salvarModificacoes() {
    _repository.salvarModificacoes();
  }
}
