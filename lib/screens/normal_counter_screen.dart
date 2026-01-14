import 'package:flutter/material.dart';

class NormalCounterScreen extends StatefulWidget {
  const NormalCounterScreen({super.key});

  @override
  State<NormalCounterScreen> createState() => _NormalCounterScreenState();
}

class _NormalCounterScreenState extends State<NormalCounterScreen> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Normal Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: increment,
                  child: const Text('+'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: decrement,
                  child: const Text('-'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
