import 'package:flutter/material.dart';
import 'package:state_managemet/selector.dart';

class counter with ChangeNotifier{
  int name = 0;
                     get selector2=>name;
  String name1="hello";
                     get selector1=>name1;
int solary=1000;

  show1(){
    name1 ="Welcome EzzaldeenS";

    notifyListeners();

  }
  void incrementCounter() {


      name++;
      notifyListeners();
  }
  pulsalary(){
    solary=solary-100;

    notifyListeners();
  }
}