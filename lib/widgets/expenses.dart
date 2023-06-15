import 'package:expense_repr_sim/data.dart';
import 'package:expense_repr_sim/widgets/pieChart.dart';
import 'package:flutter/material.dart';

class ExpenseSection extends StatelessWidget {
  const ExpenseSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            "Expenses",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: expenses
                    .map((value) => Padding(
                      padding: const EdgeInsets.all(3.5),
                      child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 5,
                                backgroundColor:
                                    pieColors[expenses.indexOf(value)],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                value["name"],
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                    ))
                    .toList(),
              ),
            )),
            const Expanded(
              child: PieChart()
              )
          ],
        ),
      ],
    );
  }
}
