class Produto {
  //_ é encapsulamento (nao estará mais visível para outros arquivos quando instanciar)
  String? _nome;
  double? _valor;

  //getter setter para outros arquivos verem (envia e pega pq tem get(pega) e set (envia))
  String? get nome => this._nome;
  set nome(String? value) => this._nome = value;

  get valor => this._valor;
  set valor(value) => this._valor = value;
}
