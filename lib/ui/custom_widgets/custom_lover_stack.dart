import 'package:flutter/material.dart';

import '../../core/constant/colors.dart';

class CustomLowerStack  extends StatelessWidget {
  const CustomLowerStack ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 250,
      //color: Colors.red,
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                //margin: EdgeInsets.all(8),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: smallFlowerbackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('assets/pnge.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Calathea',
                      style: TextStyle(
                          color: darkGreenTextColor,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('its Spines don\'t grow',
                      style: TextStyle(
                          color: greyColor,
                          fontWeight: FontWeight.w400
                      ),
                    ),

                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
