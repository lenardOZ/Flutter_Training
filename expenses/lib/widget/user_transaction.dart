import 'dart:ffi';

import '../models/transaction.dart';
import '../widget/transaction_list.dart';
import './new_transaction.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
  UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't01',
      title: 'Mouse',
      amount: 45.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't02',
      title: 'Groceries',
      amount: 100.00,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String title, String amount) {
    final newTx = Transaction(
        id: 'id',
        title: title,
        amount: double.parse(amount),
        date: DateTime.now());
    setState(() {
      _userTransactions.add(newTx);
      print('Adding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
