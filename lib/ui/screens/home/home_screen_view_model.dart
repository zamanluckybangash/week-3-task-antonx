


import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/services/database_services.dart';

import '../../../core/models/plant.dart';

class HomeScreenViewModel extends ChangeNotifier{

  //final _databaseService = DatabaseService();

  final List<Plant> _plant = DatabaseService().plantList;

  List<Plant> get getPlant {
    return _plant;
  }

//   Plant findById(int? id){
//     return _plant.firstWhere((element) => element.id==id);
//   }
//
}