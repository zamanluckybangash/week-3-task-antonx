import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_3_task_2_antonx/ui/custom_widgets/custom_cart_item.dart';
import 'package:week_3_task_2_antonx/ui/screens/cart_section/my_cart/my_cart_view_model.dart';
import 'package:week_3_task_2_antonx/ui/screens/home/home_screen.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/models/plant.dart';
class MyCart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<MyCartViewModel>(builder: (context , model , child){
      return Scaffold(
        body: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                top: 80,
                left: 15.0,
                right: 15.0,
                child:  Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: SizedBox(
                    //margin: EdgeInsets.all(8),
                    //padding: EdgeInsets.all(8),
                      height: 450,
                      width: 120,
                      child: ListView.separated(
                        itemCount: model.cartList.length,
                        itemBuilder: (BuildContext context, int index){
                          return Card(
                            //color: Colors.black,
                            child: CustomCartItem(
                              CustomCartItemPlant: model.cartList[index],
                              CustomCartItemId: index,
                            ),
                          );
                        },
                        separatorBuilder: (context, index){
                          return const Divider();
                        },
                      )
                    // color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 60),
                child: Container(
                  //color: white_color,
                  height: 60,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: CircleAvatar(
                          backgroundColor: fieldBackgroundColor,
                          radius: 18,
                          child: IconButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back_ios_outlined,
                                color: darkGreenTextColor,
                                size: 18,
                              )
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text("My Cart",
                          style: TextStyle(
                              color: darkGreenTextColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 25.0

                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.more_vert_sharp,
                            size: 30,
                            color: darkGreenTextColor,
                          )
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                child:  Padding(
                  padding: const EdgeInsets.only(top: 510),
                  child: Container(
                    height: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15,top: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              const Text("Subtotal:",
                                style: TextStyle(
                                    color: darkGreenTextColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text( "\$${31* model.cartList.length * model.total}",
                                style: const TextStyle(
                                    color: darkGreenTextColor,
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Shipping cost:",
                                style: TextStyle(
                                    color: darkGreenTextColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text("\$10.00",
                                style: TextStyle(
                                    color: darkGreenTextColor,
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            thickness: 2,
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              const Text("Total:",
                                style: TextStyle(
                                    color: darkGreenTextColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              Text("\$${10+31* model.cartList.length * model.total}",
                                style: const TextStyle(
                                    color: darkGreenTextColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 40,),
                          FractionallySizedBox(
                            widthFactor: 1,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all((darkGreenTextColor)),
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),)),
                                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15)),
                                    elevation: MaterialStateProperty.all(20),
                                    shadowColor: MaterialStateProperty.all(darkGreenTextColor)
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return HomeScreen();
                                  }));
                                },
                                child: const Text("Place your order")
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
