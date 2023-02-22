import 'package:flutter/material.dart';

class CustoFloatingActions extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;

  const CustoFloatingActions({
    Key? key,
    required this.increase,
    required this.decrease,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            onPressed: () => decrease()),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
            child: const Icon(Icons.restart_alt), onPressed: () => reset()),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
            child: const Icon(Icons.plus_one), onPressed: () => increase()),
      ],
    );
  }
}
