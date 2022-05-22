


import 'package:flutter/cupertino.dart';

import '../../../../core/models/cart_items.dart';
import '../../ui/custom_widgets/custom_counter_cart_items.dart';

class DataBaseService {

  CartItem _cartItem = CartItem( null,null,null,null,null);

  void setCartIem(
           Image? image,
           String? name,
           String? description,
           IconData? iconData,
           CustomCounterCartItem? counter){
  }
  CartItem get getCartItem{
    return _cartItem;
  }
}