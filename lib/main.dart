import 'package:expense_repr_sim/widgets/cardSection.dart';
import 'package:flutter/material.dart';
import 'package:expense_repr_sim/widgets/header.dart';
import 'package:expense_repr_sim/data.dart';

import 'widgets/expenses.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: const HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: const <Widget>[
          SizedBox(height: 20),
          SizedBox(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpenseSection()),
        ],
      ),
    );
  }
}
