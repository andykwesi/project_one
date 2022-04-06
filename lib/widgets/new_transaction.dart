// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
 

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final TextEditingController  TitleController = TextEditingController();

  final TextEditingController AmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Title"),
                controller: TitleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Amount"),
                controller: AmountController,
              ),
              TextButton(
                onPressed: () {
                  print(TitleController.text);
                  print(AmountController.text);
                },
                child: Text("Add a Transaction"),
              )
            ],
          ),
        )
        );
  }
}