import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int count = 0;

  int get counter => count;

  void incrementCounter() {
    count++;
    notifyListeners();
  }

  void decrementCounter(){
    count--;
    notifyListeners();
  }
}