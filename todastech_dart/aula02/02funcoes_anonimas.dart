//anonima só fica visivel dentro do metodo ou funcao que ela foi criada
//anonima nao retorna tipo, nao podemos definir o retorno dela
//usada muito pra info sensível tipo pgto pq fica blindada no modulo
void main() {
  var dobrarValor = (int numero) {
    return numero * 2;
  };
  print(dobrarValor(5));
}
