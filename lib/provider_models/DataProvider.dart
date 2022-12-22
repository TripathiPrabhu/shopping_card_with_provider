import 'package:flutter/foundation.dart';

class DataProvider extends ChangeNotifier{
  int _count = 0;

  get count => _count;


  void Increment(){
    _count++;
    notifyListeners();
  }

  void Decrement(){
    _count--;
    notifyListeners();
  }


}