//2. Utilizando os conceitos vistos na aula de hoje, crie uma estrutura contendo dois campos de texto e um botão.
//Os dois campos de texto deverão armazenar dois números informados pelo usuário,
//ao clicar no botão, haverá uma condicional para retornar um determinado cálculo.
//Caso os números sejam iguais realize a soma, caso contrário realize a multiplicação:

import 'package:flutter/material.dart';

class Atividade02 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EstruturaAtividade02();
  }
}

class EstruturaAtividade02 extends State {
  // Variáveis para armazenar os valores dos campos de texto
  double? num1;
  double? num2;

  // Variável para armazenar o resultado
  String? resultado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade 01'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Primeiro campo de texto para receber o número
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  num1 = double.tryParse(value);
                });
              },
              decoration: InputDecoration(labelText: "Número 1"),
            ),
            SizedBox(height: 20.0),
            // Segundo campo de texto para receber o número
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  num2 = double.tryParse(value);
                });
              },
              decoration: InputDecoration(labelText: "Número 2"),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (num1 != null && num2 != null) {
                    if (num1 == num2) {
                      resultado = "Soma: ${num1! + num2!}";
                    } else {
                      resultado = "Multiplicação: ${num1! * num2!}";
                    }
                  } else {
                    resultado = "Insira dois números válidos!";
                  }
                });
              },
              child: const Text('Calcular'),
            ),
            SizedBox(height: 20.0),
            // Widget para exibir o resultado
            Text(
              '$resultado',
              style: TextStyle(fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }
}
