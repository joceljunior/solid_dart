// Open-Closed Principle fala que nossas classes sempre devem estar fechadas para modificações, porem abertas extenções
// isso quer dizer que nao devemos mudar uma classe que ja existe e sim extender ela e adicionar a nova logica

class Pagamento {
  void pagarBoleto() => print('pagando boleto e sua logica');
  void pagarImposto() => print('pagando imposto e sua logica');

  // a cada nova forma de pagamento, sera necesario alterar a classe pagamento, aumentando complexidade e sendo necessarios mais validações
}
