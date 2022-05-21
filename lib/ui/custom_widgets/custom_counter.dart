
import 'package:flutter/material.dart';

import '../../core/constant/colors.dart';

class CustomCounter extends StatefulWidget {

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {

  int count=0;

  int increment(int num){
    return count = num;
  }

  int decrement(int num2) {
    return count=num2;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: darkGreenTextColor,
      ),
      child: Row(
          children: [
            Expanded(
              child: IconButton(
                onPressed: (){
                  setState(() {
                    if(count>0){
                      count--;
                    }
                    decrement(count);
                  });
                },
                icon:  const Icon(Icons.remove,
                  size: 10,
                  color: whitecolor,
                ),
              ),
            ),
            Text(count.toString(),
              style:  const TextStyle(color: whitecolor),
            ),
            Expanded(
              child: IconButton(
                  onPressed: (){
                    setState(() {
                      count++;
                      increment(count);
                    });
                  },
                  icon:  const Icon(Icons.add,
                    size: 10,
                    color: whitecolor,
                  )
              ),
            ),
          ]
      ),
    );
  }
}
