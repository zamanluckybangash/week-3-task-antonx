
import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/view_models/base_view_model.dart';
import '../cart_item/cart_item.dart';

class MyCartViewModel extends ChangeNotifier{

  List<CartItem> cartList =[];

  void add(CartItem index){
    cartList.add(index);
    notifyListeners();
  }

  remove(){
    cartList.remove(cartList[0]);
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