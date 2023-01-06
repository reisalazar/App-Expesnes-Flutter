import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transaction = [
    Transaction(
        id: 't1',
        title: 'Novo tenis de corrida',
        value: 310.70,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta de luz', value: 211.40, date: DateTime.now())
  ];

  _addTransaction(String title, double value) {
    final newTransaction =
        Transaction(id: '', title: title, value: value, date: DateTime.now());

    setState(() {
      _transaction.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transaction),
        TransactionForm(),
      ],
    );
  }
}
