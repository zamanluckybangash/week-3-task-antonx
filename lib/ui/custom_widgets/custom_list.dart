

import '../screens/cart_section/cart_item/cart_item.dart';

class CustomList {

  List<CartItem> cartList =[];

  void add(CartItem getCartItem){
    cartList.add(getCartItem);
  }

  List<CartItem> get getSelectedCart{
  return cartList;
}
}