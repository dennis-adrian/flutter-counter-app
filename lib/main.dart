import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // cuando nuestro widget y ninguno de sus valores cambia en la app
    // se recomienda hacerlo constante
    return const MaterialApp(
        home: Center(
      child: Text('Hello World!'),
    ));
  }
}
