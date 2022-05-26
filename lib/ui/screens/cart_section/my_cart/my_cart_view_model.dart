import 'package:flutter/cupertino.dart';
import '../../../../core/models/plant.dart';

class MyCartViewModel extends ChangeNotifier{

  List<Plant> cartList =[];

  void add(Plant index){
    cartList.add(index);
    notifyListeners();
  }


  remove(int? index){
    cartList.removeAt(index!);
    notifyListeners();
  }

  int count=1;
  double total=0.0;
  increment(){
    count++;
    notifyListeners();
  }
  decrement(){
    if(count>1){
      count--;
    }
    notifyListeners();
  }
}