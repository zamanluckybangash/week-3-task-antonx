

import 'package:flutter/cupertino.dart';

class Plant{
  int? id;
  String? title;
  String? type;
  String? description;
  String? imageUrl;
  String? heightInfo;
  String? weatherInfo;
  num? price;
  num? quantity;

  Plant({
    this.id ,
    this.title,
    this.type,
    this.description,
    this.imageUrl,
    this.heightInfo,
    this.weatherInfo,
    this.price,
    this.quantity,
  }
  );

  toJson() {
    return {
      'id': id,
      'title': title,
       'type': type,
      'description': description,
      'imageUrl': imageUrl,
      'heightInfo': heightInfo,
      'weatherInfo': weatherInfo,
      'price': price,
      'quantity': quantity
    };
  }

  Plant.fromJson(json , id){
    id = id;
    title = json['title'] ?? "ugly flower";
    type = json['type'] ?? "flower of the day";
    description = json['description'] ?? "Indoor Hi Indoor hai";
    imageUrl = json['imageUrl'] ??
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1UZyPMY3-hJzKToOonNqvBHFgSwXrMysQkQ&usqp=CAU';

    heightInfo = json['heightInfo'] ?? 'Not attractive';
    weatherInfo = json['weatherInfo'] ?? 'Nice weather';
    price = json['price'] ?? 2022;
    quantity = json['quantity'] ?? 1;
  }
}
