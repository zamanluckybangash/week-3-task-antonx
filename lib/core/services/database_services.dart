

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/models/plant.dart';

class DatabaseService {

  final _firestore = FirebaseFirestore.instance; // cloud firebase

  Future<List<Plant>> getPlantDataDb() async {

    List<Plant> databasePlantList = [];
    try {
      QuerySnapshot snapshot =
      await _firestore.collection('plant').get();
      if (snapshot.docs.isEmpty) {
        debugPrint("No data found in plant");
        //return [];
      } else {
        snapshot.docs.forEach((element) {
          databasePlantList.add(Plant.fromJson(element.data(), element.id));
        });
        debugPrint('databasePlantList length => ${databasePlantList.length}');
      }
      return databasePlantList;
    } catch (e) {
      debugPrint('Error getting test data ${e.toString()}');
      return [];
    }
  }
}

  // List<Plant> databasePlantList =[
  //
  //   Plant(
  //     id: 0,
  //     title: 'Indoor',
  //     type: 'Peace lily',
  //     description:"However, they look like huge white flowers, and they bloom"
  //       "throughout the year and a bit more frequently in the springtime."
  //       "This coupled with the plant's breads, deep green leaves",
  //     imageUrl:"assets/kondol5.png",
  //     heightInfo: 'Height',
  //     weatherInfo:"Humidity",
  //     price:31,
  //     quantity:1
  //     ),
  //   Plant(
  //       id: 1,
  //       title: 'Outdoor',
  //       type: 'Schefflera',
  //       description:'How it is a beautiful flower',
  //       imageUrl:"assets/kondol4.png",
  //       heightInfo: 'Height',
  //       weatherInfo: "Humidity",
  //       price:25,
  //       quantity:1
  //   ),
  //   Plant(
  //       id: 2,
  //       title: 'Top',
  //       type: 'SunFlower',
  //       description:'How it is a beautiful flower and i like this one so '
  //                 'much.',
  //       imageUrl:"assets/kondol2.jpg",
  //       heightInfo: 'Height',
  //       weatherInfo:'Humidity',
  //       price:33,
  //       quantity:1
  //   ),
  // ];
