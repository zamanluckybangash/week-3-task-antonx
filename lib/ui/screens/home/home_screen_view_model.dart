


import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/services/database_services.dart';

import '../../../core/models/plant.dart';

class HomeScreenViewModel extends ChangeNotifier{

  HomeScreenViewModel(){
    getPlantList();
  }

  List<Plant> _plantList =[];

  bool isLoading = false;

  final _databaseService = DatabaseService();

  List<Plant> get getPlants=>_plantList;

  getPlantList() async{
    isLoading = true;
    notifyListeners();
    _plantList = await _databaseService.getPlantDataDb();
    debugPrint('_plantList Length Home View Model => ${_plantList.length}');
    isLoading = false;
    notifyListeners();
  }

  // Plant findById(int? id){
  //   return _plant.firstWhere((element) => element.id==id);
  // }

}

