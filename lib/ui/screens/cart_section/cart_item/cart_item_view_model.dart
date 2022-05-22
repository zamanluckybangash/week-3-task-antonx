

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import '../../../../core/models/cart_items_model.dart';
import '../../../custom_widgets/custom_counter_cart_items.dart';

class CartItemViewModel extends ChangeNotifier{

  CartItemModel _image = CartItemModel( null,null,null,null,null);
  CartItemModel _name = CartItemModel( null,null,null,null,null);
  CartItemModel _description = CartItemModel( null,null,null,null,null);
  CartItemModel _iconData = CartItemModel( null,null,null,null,null);
  CartItemModel _counter = CartItemModel( null,null,null,null,null);

  //setter
  void setImage(Image? imageValue,){
    _image = CartItemModel(imageValue, null, null, null,null);
    notifyListeners();
  }
  void setName(String? nameValue,){
    _name = CartItemModel(null, nameValue, null, null,null);
    notifyListeners();
  }
  void setDescription(String? descriptionValue,){
    _description = CartItemModel(null, null, descriptionValue,null,  null);
    notifyListeners();
  }
  void setIconData(IconData? iconDataValue,){
    _iconData = CartItemModel(null, null, null, iconDataValue,null);
    notifyListeners();
  }
  void setCounter(CustomCounterCartItem? counterValue,){
    _counter = CartItemModel(null, null, null, null, counterValue);
  }

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
  CartItemModel get getCounter{
    return _counter;
  }

}