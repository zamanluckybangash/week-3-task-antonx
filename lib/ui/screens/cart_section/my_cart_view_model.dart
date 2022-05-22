
import 'package:week_3_task_2_antonx/core/view_models/base_view_model.dart';

import '../../custom_widgets/custom_cart_items.dart';

class MyCartViewModel extends BaseViewModel{

  List<CustomCartItem> cartList =[];

  void add(CustomCartItem index){
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