import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

//classe contendo toda interface gráfica
class ConteudoPagina extends State {
  //variavel
  Color cor = Colors.purple;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (cor == Colors.purple) {
            cor = Colors.green;
          } else {
            cor = Colors.purple;
          }
        });
      },
      child: Text('Clique aqui'),
      style: ElevatedButton.styleFrom(backgroundColor: cor),
    );
  }
}
