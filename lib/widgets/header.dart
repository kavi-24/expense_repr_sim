import 'package:expense_repr_sim/data.dart';
import 'package:flutter/material.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text("Kavi's Wallet",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                boxShadow: customShadow,
                color: primaryColor,
                shape: BoxShape.circle),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.deepOrange, shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: primaryColor, shape: BoxShape.circle),
                  ),
                ),
                const Center(
                  child: Icon(Icons.notifications),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
