import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management1/Screens/counter_display_screen2.dart';
import 'package:state_management1/provider/counter_provider.dart';

class CountDisplayScreen extends StatefulWidget {
  const CountDisplayScreen({super.key});

  @override
  State<CountDisplayScreen> createState() => _CountDisplayScreenState();
}

class _CountDisplayScreenState extends State<CountDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider= Provider.of<CounterProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(
            child: Text(
              'Screen One',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              counterProvider.count.toString(),
              style: const TextStyle(fontSize: 25),
            )),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (conte) => const CounterDisplayScreenTwo()));
                },
                child: const Text('Next-Screen'))
          ],
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              shape: const CircleBorder(),
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              onPressed: () {
                counterProvider.incrementCounter();

              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              shape: const CircleBorder(),
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              onPressed: () {
                counterProvider.decrementCounter();
              },
              child: const Icon(Icons.remove),
            )
          ],
        ),
      ),
    );
  }
}
