import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import './new_transactions.dart';
import './transaction_list.dart';
import 'package:personal/Models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'New Shoes', price: 99.99, date: DateTime.now()),
    Transaction(id: 't2', title: 'New bag', price: 49.99, date: DateTime.now()),
  ];

  void _addNewTransaction(String title, double price) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: title,
        price: price,
        date: DateTime.now());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(), TransactionList(_userTransaction)],
    );
  }
}
