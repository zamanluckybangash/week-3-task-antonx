

import 'package:flutter/cupertino.dart';

class Plant{
  String? id;
  String? title;
  String? type;
  String? description;
  String? imageUrl;
  String? info;
  double? price;

  Plant({
    this.id = 'p0',
    this.title ='cute Flower',
    this.type = 'Indoor',
    this.description='How it is a beautiful flower',
    this.imageUrl='asset/pnalnt.png',
    this.info= 'Most attractive',
    this.price = 20.0,
  }
  );
}
