import 'models/transaction.dart';
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
  final _transaction = [
    Transaction(
        id: 't1',
        title: 'Novo tenis de corrida',
        value: 310.70,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta de luz', value: 211.40, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Personal Expenses"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Card(
                  child: Text("grafico"),
                  color: Colors.blue,
                ),
              ),
              Column(
                children: _transaction
                    .map((tr) => Card(
                          child: Text(tr.title),
                        ))
                    .toList(),
              )
            ]));
  }
}
