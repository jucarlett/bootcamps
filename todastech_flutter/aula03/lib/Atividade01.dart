import 'package:flutter/material.dart';

class Atividade01 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EstruturaAtividade01();
  }
}

class EstruturaAtividade01 extends State {
  //variaveis
  String? nome;
  String? texto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('atividade01'),
      ),
      body: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: SizedBox(
                    //necessita da largura o sizedbox
                    width: 200.0,
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (termo) {
                            setState(() {
                              nome = termo;
                            });
                          },
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                texto = 'boa noite $nome';
                              });
                            },
                            child: const Text(
                              'clique aqui',
                              textDirection: TextDirection.ltr,
                            )),
                        Text(
                          '$texto',
                          textDirection: TextDirection.ltr,
                        )
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
