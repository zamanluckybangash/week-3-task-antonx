

import 'custom_cart_items.dart';

class CustomList {

  List<CustomCartItem> cartList =[];

  void add(CustomCartItem getCartItem){
    cartList.add(getCartItem);
  }

  List<CustomCartItem> get getSelectedCart{
  return cartList;
}
}