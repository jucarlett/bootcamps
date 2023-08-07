import 'package:flutter/material.dart';
import 'package:aula02/Exemplo02.dart';

//metodo init
void main() {
  runApp(AppWidget());
}

//especificar o tipo de layout (material dart)
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Pagina(),
    );
  }
}
