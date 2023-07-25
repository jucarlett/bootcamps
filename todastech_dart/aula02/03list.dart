void main(){
  List<String> citys = ["São Paulo", "Goiânia"];

  //adicionar item na lista
  citys.add("Rio de Janeiro");

  //adicionar 2 novos registro de uma vez
  citys.addAll(["Belo Horizonte", "Curitiba"]);

  //adicionar item na lista em uma posicao especifica
  citys.insert(0, "Florianópolis");

  //remover item da lista
  //citys.remove("São Paulo");

  //remover item da lista pelo indice
  //citys.removeAt(1);

  //remover varios registros da lista
  //citys.removeRange(0, 2); //ponto inicial ate o ponto final = 0 1 2 a final nao é removida

  //exibir todo o conteudo da lista
  //print(citys);

  //exibir um a um os itens por linhas 
  for (int i = 0; i < citys.length; i++) {
    print(citys[i]);
  }

  //exibir um a um os itens por linhas metodo ForEach
  citys.forEach((c) {print (c);});
}


