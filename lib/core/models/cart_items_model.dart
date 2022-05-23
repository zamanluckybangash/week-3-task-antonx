import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../ui/custom_widgets/custom_counter_cart_items.dart';

class CartItem{
  String? image;
  String? name;
  String? description;
  IconData? iconData;
  CustomCounterCartItem? counter;

  CartItem(this.image , this.name, this.description, this.iconData,this.counter);

}
