

import 'package:week_3_task_2_antonx/core/models/plant.dart';

class DatabaseService {

  List<Plant> databasePlantList =[

    Plant(
      id: 0,
      title: 'Indoor',
      type: 'Peace lily',
      description:"However, they look like huge white flowers, and they bloom"
        "throughout the year and a bit more frequently in the springtime."
        "This coupled with the plant's breads, deep green leaves",
      imageUrl:"assets/kondol5.png",
      heightInfo: 'Height',
      weatherInfo:"Humidity",
      price:31.0,
      quantity:1
      ),
    Plant(
        id: 1,
        title: 'Outdoor',
        type: 'Schefflera',
        description:'How it is a beautiful flower',
        imageUrl:"assets/kondol4.png",
        heightInfo: 'Height',
        weatherInfo: "Humidity",
        price:25.0,
        quantity:1
    ),
    Plant(
        id: 2,
        title: 'Top',
        type: 'SunFlower',
        description:'How it is a beautiful flower and i like this one so '
                  'much.',
        imageUrl:"assets/kondol2.jpg",
        heightInfo: 'Height',
        weatherInfo:'Humidity',
        price:33.0,
        quantity:1
    ),
  ];
}