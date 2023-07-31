//T significa q é generico a classe ou tipo de dado (variavel [int bool etc...])
class Segmento<T> {
  T? produto;
  Segmento(produto) {
    this.produto = produto;
  }
  void exibir() {
    if (this.produto is Vestuario) {
      print("Obj do tipo Vestuário");
    }
    if (this.produto is Smartphones) {
      print("Obj do tipo Smartphones");
    }
  }
}

class Vestuario {
  String? produto;
  String? tamanho;

  Vestuario(String produto, String tamanho) {
    this.produto = produto;
    this.tamanho = tamanho;
  }
}

class Smartphones {
  String? produto;
  String? processador;
  String? sistema;

  Smartphones(String produto, String processador, String sistema) {
    this.produto = produto;
    this.processador = processador;
    this.sistema = sistema;
  }
}

void main() {
  Vestuario v = new Vestuario("Camiseta", "M");
  Smartphones s = new Smartphones("iPhone", "A14", "iOS");

  Segmento<Vestuario> obj1 = new Segmento<Vestuario>(v);
  obj1.exibir();

  Segmento<Smartphones> obj2 = new Segmento<Smartphones>(s);
  obj2.exibir();
}
