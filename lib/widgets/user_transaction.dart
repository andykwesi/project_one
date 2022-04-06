// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_one/widgets/new_transaction.dart';
import 'package:project_one/widgets/transaction_list.dart';
import 'package:project_one/models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _usertransaction = [
    Transaction(
        id: "t1", title: "New Shoes", amount: 100.00, date: DateTime.now()),
    Transaction(
        id: "t2",
        title: "Weekly Groceries",
        amount: 700.00,
        date: DateTime.now())
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

    setState(() {
      _usertransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [NewTransaction(), TransactionList(_usertransaction)],
    );
  }
}
