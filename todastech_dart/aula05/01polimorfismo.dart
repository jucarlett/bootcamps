class DescontoPadrao {
  //vale transporte
  void valeTransporte(double salario) {
    print("Desconto de vale transporte de 6%: ${salario * 0.06}");
  }

  //imposto de renda
  void impostoRenda(double salario) {
    print("Desconto de imposto de renda de 5%: ${salario * 0.05}");
  }
}

class Analista extends DescontoPadrao {
  //imposto de renda
  @override
  void impostoRenda(double salario) {
    print("Desconto de imposto de renda de 8%: ${salario * 0.08}");
  }
}

void main() {
  DescontoPadrao obj1 = new DescontoPadrao();
  obj1.valeTransporte(1000);
  obj1.impostoRenda(1000);

  Analista obj2 = new Analista();
  obj2.valeTransporte(1000);
  obj2.impostoRenda(1000);
}
