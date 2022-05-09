import 'package:flutter/material.dart';
import 'package:project_one/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Expense',
      theme: ThemeData(
          primarySwatch: Colors.green,
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(fontFamily: "OpenSans", fontSize: 20, fontWeight: FontWeight.bold),
                ),
          )),
      home: MyHomePage(title: ''),
    );
  }
}
