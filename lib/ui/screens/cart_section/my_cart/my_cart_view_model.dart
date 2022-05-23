
import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/view_models/base_view_model.dart';
import '../cart_item/cart_item_screen.dart';

class MyCartViewModel extends ChangeNotifier{

  List<CartItemScreen> cartList =[];

  void add(CartItemScreen index){
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