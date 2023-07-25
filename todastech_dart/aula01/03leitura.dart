//importa modulo pra ler via terminal
import 'dart:io';

void main() {
  print('Qual é seu nome?');

  //obtendo name, é do dart:io,
  String? name =
      stdin.readLineSync(); //a ? garante que vai retornar algo, não null

  //mensagem
  print("Olá, $name!");
}
