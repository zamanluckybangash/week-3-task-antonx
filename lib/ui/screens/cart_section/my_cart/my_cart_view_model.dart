// import 'package:flutter/cupertino.dart';
// import '../../../../core/models/plant.dart';
//
// class MyCartViewModel extends ChangeNotifier{
//
//   Plant? calculation;
//   MyCartViewModel({this.calculation});
//
//   List<Plant> cartList =[];
//
//   void addToList(Plant getPlant){
//     cartList.add(getPlant);
//     notifyListeners();
//   }
//
//
//   remove(int? removeItem){
//     cartList.removeAt(removeItem!);
//     notifyListeners();
//   }
//
//   int total=0;
//   increment(Plant? plant){
//     plant!.quantity=plant.quantity!+1;
//     total=total+1;
//     notifyListeners();
//     return total;
//   }
//   decrement(Plant? plant){
//     if(plant!.quantity!>0){
//       plant.quantity = plant.quantity!-1;
//     }
//     if(total>0){
//       total=total-1;
//     }
//     notifyListeners();
//     return total;
//   }
//
// }