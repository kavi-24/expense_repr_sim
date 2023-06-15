// ignore_for_file: file_names

import 'package:expense_repr_sim/data.dart';
import 'package:expense_repr_sim/widgets/cardDetails.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: const Text(
            'Selected Card',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        boxShadow: customShadow,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: <Widget>[
                        // Positioned.fill(
                        // left: -200,
                        // top: -200,
                        // bottom: -400,
                        // child: Container(
                        //   decoration: BoxDecoration(
                        //       boxShadow: customShadow,
                        //       shape: BoxShape.circle,
                        //       color: Colors.white38),
                        // )),
                        Positioned.fill(
                            left: -600,
                            top: -100,
                            bottom: -100,
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: customShadow,
                                  shape: BoxShape.circle,
                                  color: Colors.white38),
                            )),
                        const CardDetails(),
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
