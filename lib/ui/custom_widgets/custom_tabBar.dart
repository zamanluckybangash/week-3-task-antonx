import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constant/colors.dart';
import 'custom_upper_stack.dart';

class CustomTabBar extends StatefulWidget {

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController _controller = TabController(length: 4, vsync: this);
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
          //width: 500,
          child:  TabBar(
            controller: _controller,
            labelColor: darkGreenTextColor,                   //zaman: for selected list item default
            unselectedLabelColor: greyColor,
            //labelPadding: EdgeInsets.only(left: 0,right: 0),
            isScrollable: true,
            // indicatorSize: TabBarIndicatorSize.label,
            //indicatorWeight: 1,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(40), // Creates border
                color: fieldBackgroundColor
            ),
            tabs: const [
              Tab(
                text:("Recommend"),
              ),
              Tab(
                  text:("Top")
              ),
              Tab(
                  text:("Indoor")
              ),
              Tab(
                  text:("Outdoor")
              ),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: [
              ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context , int index){
                    return const CustomUpperStack();
                  }
              ),
              Container(
                //height: 20,
                //width: 20,
                color: Colors.blue,
              ),
              Container(
                //height: 20,
                //width: 20,
                color: Colors.red,
              ),
              Container(
                //height: 20,
                //width: 20,
                color: Colors.blue,
              ),
            ],
          ),
        ),

      ],
    );
  }
}
