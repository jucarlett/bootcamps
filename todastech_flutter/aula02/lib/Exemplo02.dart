import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

//classe contendo toda interface gráfica
class ConteudoPagina extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Utilizando scaffold')),
        body: SizedBox(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
              child: const Center(child: Text('1')),
            ),
            Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.yellow)),
              child: Image.network(
                  'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-256.png'),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
            ),
          ],
        )));
  }
}
