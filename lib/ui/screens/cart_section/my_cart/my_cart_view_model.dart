import 'package:flutter/cupertino.dart';
import '../../../../core/models/plant.dart';

class MyCartViewModel extends ChangeNotifier{

  List<Plant> cartList =[];

  void add(Plant getOneByOnePlant){
    cartList.add(getOneByOnePlant);
    notifyListeners();
  }


  remove(int? index){
    cartList.removeAt(index!);
    notifyListeners();
  }

  int count=0;
  double total=0.0;
  increment(Plant? plant){
    plant!.quantity=plant.quantity+1;
    notifyListeners();
  }
  decrement(Plant? plant){
    if(plant!.quantity>0){
      plant!.quantity = plant.quantity-1;
    }
    notifyListeners();
  }
}