
import 'package:flutter/material.dart';
import '../../core/constant/colors.dart';
import '../screens/product_details_section/product_details.dart';

class CustomUpperStack  extends StatelessWidget {
  const CustomUpperStack ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return ProductDetail();
        }));
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        height: 300,
        width: 150,
         //color: Colors.pink,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 50,
              child: Container(
                height: 190,
                width: 150,
                decoration: BoxDecoration(
                    color: fieldBackgroundColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 135.0,left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('indoor',
                        style: TextStyle(
                            color: darkGreenTextColor
                        ),
                      ),
                      Row(
                        children: [
                          const Text('Peace lily',
                            style: TextStyle(
                                color: darkGreenTextColor,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Container(
                            height: 15,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: const Center(child: Text(" \$23.00 ",
                              style: TextStyle(
                                  color: darkGreenTextColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 8
                              ),
                            )

                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 50,
              child:  Container(
                // padding: EdgeInsets.all(8),
                height: 125,
                width: 150,
                decoration: const BoxDecoration(
                  color: curveColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(90),
                    bottomLeft: Radius.circular(30),
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),

                  ),
                ),
              ),
            ),
            Positioned(
                left: -10,
                top: 0,
                child: Container(
                  //margin: EdgeInsets.all(8),
                  //padding: EdgeInsets.all(8),
                  height: 150,
                  width: 120,
                  child: Image.asset("assets/kondol5.png",),
                  // color: Colors.blue,
                )
            ),
          ],
        ),
      ),
    );
  }
}
