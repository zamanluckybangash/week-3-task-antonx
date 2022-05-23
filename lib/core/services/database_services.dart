

import 'package:week_3_task_2_antonx/core/models/plant.dart';

class DatabaseService {

  List<Plant> plant =[

  Plant(
    id: 'p0',
    title: 'Indoor',
    type: 'Peace lily',
    description:'How it is a beautiful flower',
    imageUrl:"assets/kondol5.png",
    info: 'Most attractive',
    price:31.0,
      ),
    Plant(
      id: 'p1',
      title: 'Outdoor',
      type: 'Schefflera',
      description:'How it is a beautiful flower',
      imageUrl:"assets/kondol4.png",
      info: 'Most attractive',
      price:25.0,
    ),
    Plant(
      id: 'p2',
      title: 'Top',
      type: 'SunFlower',
      description:'How it is a beautiful flower',
      imageUrl:"assets/kondol2.jpg",
      info: 'Most attractive',
      price:33.0,
    ),
  ];
}