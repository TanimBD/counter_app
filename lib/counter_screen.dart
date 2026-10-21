import 'package:flutter/material.dart';
import 'widgets/counter_box.dart';
import 'widgets/color_box.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),
      body: SafeArea(
        child: Row(
          children: [
            // Left: red panel
            const Expanded(
              flex: 3,
              child: ColorBox(color: Colors.red),
            ),

            // Middle: counter
            Expanded(
              flex: 4,
              child: Center(
                child: CounterBox(
                  count: count,
                  onTap: () {
                    setState(() {
                      count++;
                    });
                  },
                ),
              ),
            ),

            // Right: green for even, blue for odd
            Expanded(
              flex: 3,
              child: ColorBox(
                color: count.isEven
                    ? Colors.green
                    : Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}