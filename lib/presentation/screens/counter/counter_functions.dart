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
      floatingActionButton:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          CustomButton(
            icon: Icons.exposure_minus_1_outlined, 
            onPressed: (){
              setState(() {
                if (clickCounter == 0) { return ;}
                clickCounter -= 1 ;
              });
            }),

          const SizedBox(height: 10),

          CustomButton(
            icon: Icons.plus_one_outlined,
            onPressed: () {
              setState(() {
                clickCounter += 1;                
              });
            },),
          
          const SizedBox(height: 10),

          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter=0;
              });
            },)
        ],
      ),
    );
  }
}




class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  
  const CustomButton({
    super.key,
    required this.icon, 
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
