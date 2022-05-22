
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_3_task_2_antonx/core/view_models/base_view_model.dart';

import '../../core/constant/colors.dart';
import '../screens/cart_section/my_cart/my_cart_view_model.dart';

class  CustomCounterCartItem extends StatelessWidget {

  //
  // int count=0;
  //
  // int increment(int num){
  //   return count = num;
  // }
  //
  // int decrement(int num2) {
  //   return count=num2;
  // }

  @override
  Widget build(BuildContext context) {
    MyCartViewModel myCartViewModel = context.watch<MyCartViewModel>();
    int count=myCartViewModel.num;
    return Container(
      // color: Colors.red,
      height: 32,
      width: 80,
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child:  IconButton(
                onPressed: (){
                  myCartViewModel.decrement();
                },
                icon:   Container(
                  height: 40,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: darkGreenTextColor),
                  ),
                  child: const Icon(Icons.remove,
                    size: 7,
                    color: darkGreenTextColor,
                  ),
                ),
              ),
            ),
            Text(count.toString(),
              style:  const TextStyle(color: darkGreenTextColor),
            ),
            Expanded(
              child: IconButton(
                  onPressed: (){
                    myCartViewModel.increment();
                  },
                  icon:  Container(
                    height: 50,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: darkGreenTextColor),
                    ),
                    child: const Icon(Icons.add,
                      size: 10,
                      color: darkGreenTextColor,
                    ),
                  )
              ),
            ),
          ]
      ),
    );
  }
}
