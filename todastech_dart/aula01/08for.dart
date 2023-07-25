void main() {
  //numero pra finalizar o laco
  int num = 5;

  for (int i = 1; i < 11; i++) {
    print(i);
//break finaliza laço e continue continua um laço
    if (i == num) {
      print("Achei o número $num");
      break;
    }else{
      continue;
    }
  }
}
