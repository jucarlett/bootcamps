//classe -> molde
//atributos -> características
//métodos -> funções
//obj -> criação de dados através de classes

class Pessoa {
  String? nome;
  int? idade;

  void apresentacao() {
    print('Olá, meu nome é ${nome} e tenho ${idade} anos.');
  }
}

void main() {
  //instanciar um obj = criar um obj
  Pessoa id1 = new Pessoa(); //new é opcional
  id1.nome = 'Pedro';
  id1.idade = 25;
  id1.apresentacao(); //pode criar quantas instancias quiser id2 id3 ....

  Pessoa id2 = new Pessoa();
  id2.nome = 'Maria';
  id2.idade = 30;
  id2.apresentacao();
}
