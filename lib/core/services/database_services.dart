

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

