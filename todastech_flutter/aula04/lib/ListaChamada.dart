import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LojaPage(),
    );
  }
}

class LojaPage extends StatefulWidget {
  const LojaPage({super.key});

  @override
  _LojaPageState createState() => _LojaPageState();
}

class _LojaPageState extends State<LojaPage> {
  String? _categoriaProduto;
  bool _emPromocao = false;
  TextEditingController _nomeProdutoController = TextEditingController();
  List<String> _produtos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema de Loja"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _nomeProdutoController,
              decoration: InputDecoration(
                labelText: "Nome do Produto",
              ),
            ),
          ),
          DropdownButton<String>(
            value: _categoriaProduto,
            hint: const Text("Selecione uma categoria"),
            items: ["Eletrônicos", "Roupas", "Alimentos", "Livros"]
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                _categoriaProduto = newValue;
              });
            },
          ),
          CheckboxListTile(
            title: const Text("Em promoção?"),
            value: _emPromocao,
            onChanged: (bool? value) {
              setState(() {
                _emPromocao = value!;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_nomeProdutoController.text.isNotEmpty &&
                    _categoriaProduto != null) {
                  _produtos.add(
                      "${_nomeProdutoController.text} - Categoria: $_categoriaProduto - Promoção: $_emPromocao");
                  _nomeProdutoController.clear();
                }
              });
            },
            child: const Text("Adicionar Produto"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _produtos.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_produtos[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
