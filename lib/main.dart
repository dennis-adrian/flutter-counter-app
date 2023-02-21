import 'package:flutter/material.dart';

import 'package:counter_app/screens/home_screen.dart';

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
        debugShowCheckedModeBanner: false,
        home: Center(
          child: HomeScreen(),
        ));
  }
}
