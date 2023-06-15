// ignore_for_file: file_names

import 'package:expense_repr_sim/data.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: 250, child: Image.asset("images/mastercardlogo.png")),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Row(
                  children: const <Widget> [
                    Text(
                      "**** **** ****  ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "6024",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                const Text(
                  "PLATINUM CARD",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
