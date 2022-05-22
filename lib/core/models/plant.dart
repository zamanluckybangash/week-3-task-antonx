


import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../ui/custom_widgets/custom_counter_cart_items.dart';

class Plant{
  Image? image;
  String? name;
  String? description;
  IconData? iconData;
  CustomCounterCartItem? counter;

  Plant(this.image , this.name, this.description, this.iconData, this.counter);
}
