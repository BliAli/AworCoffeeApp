import 'package:flutter/material.dart';

void main() {
  runApp(const AworCoffeeApp());
}

class AworCoffeeApp extends StatelessWidget {
  const AworCoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
