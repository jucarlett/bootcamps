class  Produto {
  Produto(){
    String? nome;
    double? valor;
    String? segmento;
    
  }
  Produto.eletronico(String nome, double valor){
    this.nome = nome;
    this.valor = valor;
    this.segmento = "Eletrônico";
  }
}


void main(){
  Produto p1 = new Produto();
  Produto p2 = new Produto.eletronico("TV", 1000);
}