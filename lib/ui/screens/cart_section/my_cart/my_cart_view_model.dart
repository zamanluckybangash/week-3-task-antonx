import 'package:flutter/cupertino.dart';
import '../../../../core/models/plant.dart';

class MyCartViewModel extends ChangeNotifier{

  List<Plant> cartList =[];

  void addToList(Plant getPlant){
    cartList.add(getPlant);
    notifyListeners();
  }


  remove(int? removeItem){
    cartList.removeAt(removeItem!);
    notifyListeners();
  }

  double total=0.0;
  increment(Plant? plant){
    plant!.quantity=plant.quantity+1;
    notifyListeners();
  }
  decrement(Plant? plant){
    if(plant!.quantity>0){
      plant.quantity = plant.quantity-1;
    }
    notifyListeners();
  }
}