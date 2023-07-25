import 'dart:async';

void main() {
  Map<String, String> estadosCapitais = {
    "MG": "Belo Horizonte",
    "SP": "São Paulo",
    "RJ": "Rio de Janeiro",
    "ES": "Vitória",
  };
  print(estadosCapitais); //todos os valores

  estadosCapitais.forEach((chave, valor) {
    print(valor + " - " + chave);
  }); //valores individualmente

  print(estadosCapitais["MG"]); //valor especifico pela chave
  
  print(estadosCapitais.keys);
}
