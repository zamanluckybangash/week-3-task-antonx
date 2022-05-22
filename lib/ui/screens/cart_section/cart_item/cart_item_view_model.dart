

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import '../../../../core/models/cart_items.dart';
import '../../../custom_widgets/custom_counter_cart_items.dart';

class CartItemViewModel extends ChangeNotifier{

  CartItem _image = CartItem( null,null,null,null,null);
  CartItem _name = CartItem( null,null,null,null,null);
  CartItem _description = CartItem( null,null,null,null,null);
  CartItem _iconData = CartItem( null,null,null,null,null);
  CartItem _counter = CartItem( null,null,null,null,null);

  //setter
  void setImage(Image? imageValue,){
    _image = CartItem(imageValue, null, null, null, null);
  }
  void setName(String? nameValue,){
    _name = CartItem(null, nameValue, null, null, null);
  }
  void setDescription(String? descriptionValue,){
    _description = CartItem(null, null, descriptionValue, null, null);
  }
  void setIconData(IconData? iconDataValue,){
    _iconData = CartItem(null, null, null, iconDataValue, null);
  }
  void setCounter(CustomCounterCartItem? counterValue,){
    _counter = CartItem(null, null, null, null, counterValue);
  }

  //getter
  CartItem get getImage{
    return _image;
  }
  CartItem get getName{
    return _name;
  }
  CartItem get getDescription{
    return _description;
  }
  CartItem get getIconData{
    return _iconData;
  }

}