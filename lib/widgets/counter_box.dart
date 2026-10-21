import 'package:flutter/material.dart';

class CounterBox extends StatelessWidget {
  final int count;
  final VoidCallback onTap;

  const CounterBox({
    super.key,
    required this.count,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(
          minWidth: 150,
          minHeight: 150,
        ),
        padding: const EdgeInsets.all(12),
        color: Colors.yellow,
        alignment: Alignment.center,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Counter Value : $count',
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}