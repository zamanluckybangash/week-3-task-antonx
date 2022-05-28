import 'package:flutter/material.dart';
import '../../../core/constant/colors.dart';
import '../../custom_widgets/custom_cart_badge.dart';
import '../../custom_widgets/custom_lover_stack.dart';
import '../../custom_widgets/custom_tabBar.dart';

class HomeScreen extends StatelessWidget {
    //int count = 0;
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      //backgroundColor: Colors.red,
                      child: ClipOval(child: Image.asset('assets/muhammad.jpg')),
                    ),
                    CartBadge()
                  ],
                ),
                const SizedBox(height: 20,),
                const Text('Let\'s find your\n' 'plants',
                  style: TextStyle(
                      color: darkGreenTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  decoration:  InputDecoration(
                      suffixIcon: const Icon(Icons.mic,
                        color: darkGreenTextColor,
                        size: 20,
                      ),
                      prefixIcon: const Icon(Icons.search,
                        color: darkGreenTextColor,
                        size: 20,
                      ),
                      hintText:'Search plant',
                        hintStyle : const TextStyle(
                          color: greyColor,
                          fontWeight: FontWeight.w400,
                        ),
                      fillColor: fieldBackgroundColor,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 15)
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                    height: 320,
                    child: CustomTabBar(
                    )
                ),
                const SizedBox(height: 10,),
                const Text('Recent viewed',
                  style: TextStyle(
                      color: darkGreenTextColor,
                      fontWeight: FontWeight.w700
                  ),
                ),
                Container(
                  height: 100,
                  //color: Colors.red,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CustomLowerStack(),
                      CustomLowerStack(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
