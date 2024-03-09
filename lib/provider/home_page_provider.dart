import 'package:flutter/cupertino.dart';

class HomePageProvider with ChangeNotifier{
  bool? isEligible;
  String eligibilityMsg= '';

  void checkEligibility(int age){
    if(age>= 18){
      isEligible=true;
      eligibilityMsg= 'You are eligible';
      notifyListeners();
    }else{
      isEligible= false;
      eligibilityMsg= 'You are not eligible';
      notifyListeners();
    }
  }
}