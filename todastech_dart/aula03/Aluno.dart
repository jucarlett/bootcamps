class Aluno {
  //atributos
  String? _nome;
  double? _nota1, _nota2;

  //contrutor
  Aluno(String nome, double nota1, double nota2) {
    this._nome = nome;
    this._nota1 = nota1;
    this._nota2 = nota2;
    _msg();
  }
  //sempre quebre os metodos em varias acoes
  //metodo de media
  double _calculoMedia() {
    return (this._nota1! + this._nota2!) / 2;
  }

  //metodo de situacao
  String _situacao() {
    return _calculoMedia() >= 7 ? 'Aprovado' : 'Reprovado';
  }

  //msg
  void _msg() {
    print(
        'O aluno ${this._nome} está ${_situacao()} com média ${_calculoMedia()}');
  }
}
