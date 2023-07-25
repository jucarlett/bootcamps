//funcao soma - function convencional
int soma(int n1, int n2) {
  return n1 + n2;
}

//funcao subtracao - arrow function é boa pra 1 linha só, coisas simples
int subtracao(int n1, int n2) => n1 - n2;

//inicializacao
void main() {
  print(soma(6, 10));
  print(subtracao(16, 10));
}
