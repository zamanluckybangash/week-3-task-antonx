

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import '../../../../core/models/cart_items_model.dart';
import '../../../custom_widgets/custom_counter_cart_items.dart';

class CartItemViewModel extends ChangeNotifier{

  CartItemModel _image = CartItemModel( null,null,null,null);
  CartItemModel _name = CartItemModel( null,null,null,null);
  CartItemModel _description = CartItemModel( null,null,null,null);
  CartItemModel _iconData = CartItemModel( null,null,null,null);
  // CartItem _counter = CartItem( null,null,null,null,null);

  //setter
  void setImage(Image? imageValue,){
    _image = CartItemModel(imageValue, null, null, null);
  }
  void setName(String? nameValue,){
    _name = CartItemModel(null, nameValue, null, null);
  }
  void setDescription(String? descriptionValue,){
    _description = CartItemModel(null, null, descriptionValue,  null);
  }
  void setIconData(IconData? iconDataValue,){
    _iconData = CartItemModel(null, null, null, iconDataValue);
  }
  // void setCounter(CustomCounterCartItem? counterValue,){
  //   _counter = CartItem(null, null, null, null, counterValue);
  // }

  //getter
  CartItemModel get getImage{
    return _image;
  }
  CartItemModel get getName{
    return _name;
  }
  CartItemModel get getDescription{
    return _description;
  }
  CartItemModel get getIconData{
    return _iconData;
  }
  // CartItem get getCounter{
  //   return _counter;
  // }

}