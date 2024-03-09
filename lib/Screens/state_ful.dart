import 'package:flutter/material.dart';

class StateFull extends StatefulWidget {
  const StateFull({super.key});

  @override
  State<StateFull> createState() => _StateFullState();
}

class _StateFullState extends State<StateFull> {
  int count = 0;

   void increment(){
     setState(() {
       count++;
     });
   }
  void decrement(){
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text('StateFull'),
          )),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
          onPressed: increment,
          child: const  Icon(Icons.add),),
          Center(
            child: Text(
              'count: $count',
              style: const TextStyle(fontSize: 40, color: Colors.red),
            ),
          ),
          //const SizedBox(width: 50,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
            ),
              onPressed: decrement, child: const  Icon(Icons.remove))
        ],
      ),
    );
  }
}
