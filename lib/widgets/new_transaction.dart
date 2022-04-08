
import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  NewTransaction(this.addTx);
  final Function addTx;

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final TextEditingController TitleController = TextEditingController();

  final TextEditingController AmountController = TextEditingController();

  void submitData() {
    if (TitleController.text.isEmpty || AmountController.text.isEmpty) {
      return;
    }
    widget.addTx(TitleController.text, double.parse(AmountController.text));
    Navigator.of(context).pop();
  }

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
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(labelText: "Amount"),
                controller: AmountController,
              ),
              TextButton(
                onPressed: () {
                  submitData();
                },
                child: Text("Add a Transaction"),
              )
            ],
          ),
        ));
  }
}
