import 'package:flutter/material.dart';

import 'package:counter_app/helper_widgets/custom_floating_actions.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

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
      floatingActionButton: CustoFloatingActions(
          increase: increase, decrease: decrease, reset: reset),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
