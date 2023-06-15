import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFFCADCED);

List<BoxShadow> customShadow = [
  BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: -5,
      offset: const Offset(-5, -5),
      blurRadius: 30),
  BoxShadow(
    // blue[900]
      color: Colors.blue.withOpacity(.2),
      spreadRadius: 2,
      offset: const Offset(7, 7),
      blurRadius: 20),
];


List expenses = [
  {"name":"Groceries", "amount":500.0},
  {"name":"Rent", "amount":624.0},
  {"name":"Utilities", "amount":200.0},
  {"name":"Food", "amount":10.0},
  {"name":"Clothes", "amount":80.0},
  {"name":"Transport", "amount":100.0},
];

List pieColors = [
  Colors.indigo[400],
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.deepOrange,
  Colors.brown,
];