import 'package:flutter/cupertino.dart';

class NumbersListProvider extends
ChangeNotifier{
  List<int>Numbers=[
    1,2,3,4
  ];
  void Add(){
    Numbers.add(Numbers.last+1);
   notifyListeners();
  }

}