

import 'package:flutter/cupertino.dart';

class Plant{
  int? id;
  String? title;
  String? type;
  String? description;
  String? imageUrl;
  String? heightInfo;
  String? weatherInfo;
  double? price;

  Plant({
    this.id = 0,
    this.title ='cute Flower',
    this.type = 'Indoor',
    this.description='How it is a beautiful flower',
    this.imageUrl='asset/pnalnt.png',
    this.heightInfo= 'Most attractive',
    this.weatherInfo,
    this.price = 20.0,
  }
  );
}
