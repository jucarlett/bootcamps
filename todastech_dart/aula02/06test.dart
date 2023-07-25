import 'dart:io';

void main() {
  List<String> nomes = [];

  while (true) {
    stdout.write('Digite um nome de seu desejo ou "SAIR" para encerrar a aplicação): ');

     
    String nome = stdin.readLineSync() ?? ''; // O ?? verifica se é valor null

    if (nome.toUpperCase() == 'SAIR') {
      break;
    }

    nomes.add(nome);
  }

  for (String nome in nomes) {
    print(nome);
  }
}
