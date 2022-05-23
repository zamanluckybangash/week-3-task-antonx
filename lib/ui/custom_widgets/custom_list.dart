

import '../screens/cart_section/cart_item/cart_item_screen.dart';

class CustomList {

  List<CartItemScreen> cartList =[];

  void add(CartItemScreen getCartItem){
    cartList.add(getCartItem);
  }

  List<CartItemScreen> get getSelectedCart{
  return cartList;
}
}