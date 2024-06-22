import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue,
        title: const Center(
            child: Text(
          "Contador",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
            Text(
              '$clickCounter' == "1" ? "Click" : "Clicks",
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter += 1;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
