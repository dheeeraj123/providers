import 'package:flutter/cupertino.dart';

class CounterController extends ChangeNotifier{
  int count =0;
  Brightness bright=Brightness.light;


  updateCount(){
    count = count+1;


    notifyListeners();
  }
  updatetheme(){

    if(bright==Brightness.dark){
       bright=Brightness.light;
    }
    else{
       bright=Brightness.dark;
    }
    notifyListeners();
  }
}