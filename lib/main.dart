import 'package:flutter/material.dart';

void main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Personal Expenses"),
        ),
        body: Column(children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text("grafico"),
              color: Colors.blue,
            ),
          ),
          Card(
            child: Text("Lista de transacoes"),
            elevation: 5,
          )
        ]));
  }
}
