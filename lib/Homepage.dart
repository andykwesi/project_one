import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:project_one/transaction.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transactions = [
    Transaction(
        id: "t1", title: "New Shoes", amount: 100.00, date: DateTime.now()),
    Transaction(
        id: "t2",
        title: "Weekly Groceries",
        amount: 70.00,
        date: DateTime.now())
  ];
  @override
  void initState() {
    // TODO: implement initState
    print("Transactions");
    print(transactions[0].title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Flutter App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.blue,
            width: double.infinity,
            child: const Card(
              color: Colors.blue,
              child: Text("CHART"),
              elevation: 5,
            ),
          )
          Column(
            children: transactions.map((tx){
              return Card(child: Text(tx.title),);
             }).toList(),
          )
        ],
      ),
    );
  }
}
