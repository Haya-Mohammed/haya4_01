import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  count--;
                });
              },
              child: const Text('minus'),
            ),
            Text('$count',style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            TextButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Text('plus'),
            ),
          ],
        ),
      ),
    );
  }
}
