import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management1/provider/counter_provider.dart';

class CounterDisplayScreenTwo extends StatefulWidget {
  const CounterDisplayScreenTwo({super.key});

  @override
  State<CounterDisplayScreenTwo> createState() => _CounterDisplayScreenTwoState();
}

class _CounterDisplayScreenTwoState extends State<CounterDisplayScreenTwo> {
  @override
  Widget build(BuildContext context) {

    CounterProvider counterProvider= Provider.of<CounterProvider>(context);
    return  Scaffold(
      appBar: AppBar(title: const Center(child: Text('Screen-Two',style: TextStyle(color: Colors.white),),)),
      body:  Center(
        child: Text(counterProvider.count.toString(),
        style: const TextStyle(fontSize: 25),),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            onPressed: (){
              counterProvider.incrementCounter();
            },child: const Icon(Icons.add),),
          const SizedBox(height: 20,),

          FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            onPressed: (){
              counterProvider.decrementCounter();
            },child: const Icon(Icons.remove),)
        ],
      ),
    );
  }
}
