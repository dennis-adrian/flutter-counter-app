import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    const fontSize24 = TextStyle(fontSize: 24);
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Number of clicks',
            style: fontSize24,
          ),
          Text(
            '$counter',
            style: fontSize24,
          )
        ]),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.exposure_minus_1),
              onPressed: () {
                counter--;
                // primero cambiamos el valor de la property counter
                // y setState notifica a Flutter que hubo un cambio interno
                // para que redibuje el widget
                setState(() {});
              }),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
              child: const Icon(Icons.restart_alt),
              onPressed: () {
                counter = 0;
                setState(() {});
              }),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
              child: const Icon(Icons.plus_one),
              onPressed: () {
                counter++;
                setState(() {});
              }),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
