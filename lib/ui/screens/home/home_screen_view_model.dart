


import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/services/database_services.dart';

import '../../../core/models/plant.dart';

class HomeScreenViewModel extends ChangeNotifier{

  HomeScreenViewModel(){
    addToPlantList();
  }

  List<Plant> _plantList =[];

  final _databaseService = DatabaseService();

  List<Plant> get getPlants=>_plantList;

  addToPlantList() async{
    _plantList = await _databaseService.databasePlantList;
    notifyListeners();
  }

  // Plant findById(int? id){
  //   return _plant.firstWhere((element) => element.id==id);
  // }

}

