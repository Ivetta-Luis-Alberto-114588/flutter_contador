import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.blue,
            title: const Center(child: Text("Contador", style: TextStyle(color: Colors.black),)),
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("10", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),),
                Text("Clicks", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),)
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          
    );
  }
}