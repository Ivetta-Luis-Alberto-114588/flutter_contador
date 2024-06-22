import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue,
        title: const Center(
            child: Text(
          "Funcion Contador",
          style: TextStyle(color: Colors.black),
        )),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            child: const Icon(Icons.refresh_outlined),
          ),

          const SizedBox(height: 10),

          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                clickCounter += 1;
              });
            },
            child: const Icon(Icons.plus_one_rounded),
          ),
          
          const SizedBox(height: 10),

          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter -= 1;
              });
            },
            child: const Icon(Icons.exposure_minus_1_rounded),
          )
        ],
      ),
    );
  }
}
