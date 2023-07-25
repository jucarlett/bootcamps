void main() {
  //vetor de nomes - com set nao pode repetir valores, ignorando posicao se repetir valor, ele só ignora a repeticao e remove na exibicao
   //diferente do list abre com chaves nao colchetes
  Set<String> nomes = {
    "João",
    'Ana',
    'João'
  };

  nomes.add("Maria");
  
  print(nomes);
}
