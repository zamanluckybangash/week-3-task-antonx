import 'package:flutter/cupertino.dart';
import '../../../../core/models/plant.dart';

class MyCartViewModel extends ChangeNotifier{

  List<Plant> cartList =[];

  void add(Plant index){
    cartList.addAll(<Plant>[index]);
    notifyListeners();
  }

  remove(int? index){
    cartList.removeAt(index!);
    notifyListeners();
  }
  int num=1;
  increment(){
    num++;
    notifyListeners();
  }
  decrement(){
    if(num>1){
      num--;
    }
    notifyListeners();
  }
}