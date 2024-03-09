import 'package:flutter/material.dart';

class StateLess extends StatelessWidget {
  const StateLess({super.key});

  @override
  Widget build(BuildContext context) {
    int count=0;
    return  SafeArea(child: Scaffold(
      appBar: AppBar(title: const Center(child:Text('State Less') ,) ,backgroundColor: Colors.purpleAccent,),
      body: Center(
        child: Text('count: $count', style: const TextStyle(fontSize: 40),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          print(count);
        },
          child: const Icon(Icons.add),
      ),
    ));
  }
}
