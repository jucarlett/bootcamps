//3. Crie um componente utilizando o scafold,
//implemente três botões para alterar a cor de
//fundo do scafold.

import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

class ConteudoPagina extends State<Pagina> {
  Color corDeFundo = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corDeFundo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  corDeFundo = Colors.purple;
                });
              },
              child: Text('Roxo'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  corDeFundo = Colors.green;
                });
              },
              child: Text('Verde'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  corDeFundo = Colors.blue;
                });
              },
              child: Text('Azul'),
            ),
          ],
        ),
      ),
    );
  }
}
