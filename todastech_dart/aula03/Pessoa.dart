class Pessoa {
  String? _nome;
  String? _cidade;

//contrutor - pode ter vários (diferneciando só parametro se quiser msm nome pode)
  Pessoa(String nome, String cidade) {
    //usa-se this pra falar q é de classe ;)
    this._nome = nome;
    this._cidade = cidade;
    _mensagem();
  }
  void _mensagem() {
    print("Oi ${this._nome} você mora em ${this._cidade}");
  }
}
