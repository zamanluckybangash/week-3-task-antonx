import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_3_task_2_antonx/ui/screens/cart_section/my_cart/my_cart.dart';
import 'package:week_3_task_2_antonx/ui/screens/cart_section/my_cart/my_cart_view_model.dart';
import 'package:week_3_task_2_antonx/ui/screens/home/home_screen_view_model.dart';
import '../../../core/constant/colors.dart';
import '../../../core/models/plant.dart';
import '../../custom_widgets/custom_counter.dart';

class ProductDetail extends StatelessWidget {

  Plant? productDetailPlant;
  //int? productDetailId;

  ProductDetail({this.productDetailPlant,/*this.productDetailId*/});

  @override
  Widget build(BuildContext context) {

    MyCartViewModel myCartViewModel = context.watch<MyCartViewModel>();
    return Material(
        child:  Container(
          color: curveColor,
          child: Stack(
            // overflow: Overflow.visible,
            children: [
              Positioned(
                top: 80,
                left: 65,
                child:  Container(
                  //margin: EdgeInsets.all(8),
                  //padding: EdgeInsets.all(8),
                  height: 330,
                  width: 220,
                  child: Image.asset("${productDetailPlant?.imageUrl}",),
                  // color: Colors.blue,
                ),
              ),
              Positioned(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 380),
                      child: Container(
                        height: 390,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 145.0),
                                child: Icon(Icons.more_horiz_outlined),
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text("${productDetailPlant?.type}",
                                            style: const TextStyle(
                                                color: darkGreenTextColor,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 17
                                            )
                                        ),
                                        SizedBox(height: 5),
                                        RichText(
                                            text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$${productDetailPlant?.price}',
                                                      style: const TextStyle(
                                                          color: greenTextColor,
                                                          fontWeight: FontWeight.w700,
                                                          fontSize: 17
                                                      )
                                                  ),
                                                  const TextSpan(
                                                      text: ' ****',
                                                      style: TextStyle(
                                                          color: smallFlowerbackgroundColor,
                                                          fontWeight: FontWeight.w700,
                                                          fontSize: 17
                                                      )
                                                  ),
                                                ]
                                            ))
                                      ],
                                    ),
                                    CustomCounter()
                                  ]
                              ),
                              const SizedBox(height: 20,),
                              const Text("About",
                                  style: TextStyle(
                                      color: darkGreenTextColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15
                                  )
                              ),
                              const SizedBox(height: 5,),
                              Text("${productDetailPlant?.description}",
                                style: const TextStyle(
                                  color: darkGreenTextColor,
                                ),
                              ),
                              Container(
                                height: 100,
                                //color: Colors.grey,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      width: 130,
                                      // color: Colors.blue,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        //crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                              radius: 25,
                                              backgroundColor: darkGreenTextColor,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 2.0),
                                                child: Row(
                                                  //mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: const [
                                                    Icon(Icons.mobile_friendly,
                                                      color: fieldBackgroundColor,
                                                    ),
                                                    Icon(Icons.more_vert_sharp,
                                                      color: fieldBackgroundColor,
                                                    ),
                                                  ],
                                                ),
                                              )
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:  [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8),
                                                child: Text("${productDetailPlant?.heightInfo}",
                                                  style: const TextStyle(
                                                    color: darkGreenTextColor,
                                                  ),
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text("8.2",
                                                  style: TextStyle(
                                                      color: darkGreenTextColor,
                                                      fontWeight: FontWeight.w700
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 130,
                                      // color: Colors.blue,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        //crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            radius: 25,
                                            backgroundColor: darkGreenTextColor,
                                            child: Icon(Icons.leak_add_outlined,
                                              color: fieldBackgroundColor,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:  [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8),
                                                child: Text("${productDetailPlant?.weatherInfo}",
                                                  style: const TextStyle(
                                                    color: darkGreenTextColor,
                                                  ),
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text("60%",
                                                  style: TextStyle(
                                                      color: darkGreenTextColor,
                                                      fontWeight: FontWeight.w700
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 130,
                                      // color: Colors.blue,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        //crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                              radius: 25,
                                              backgroundColor: darkGreenTextColor,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 2.0),
                                                child: Row(
                                                  //mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: const [
                                                    Icon(Icons.mobile_friendly,
                                                      color: fieldBackgroundColor,
                                                    ),
                                                    Icon(Icons.more_vert_sharp,
                                                      color: fieldBackgroundColor,
                                                    ),
                                                  ],
                                                ),
                                              )
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(left: 8),
                                                child: Text("Height",
                                                  style: TextStyle(
                                                    color: darkGreenTextColor,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text("8.2",
                                                  style: TextStyle(
                                                      color: darkGreenTextColor,
                                                      fontWeight: FontWeight.w700
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context){
                                          return MyCart();
                                        }));
                                      },
                                      iconSize: 40,
                                      icon: const CircleAvatar(
                                        radius: 20,
                                        backgroundColor: fieldBackgroundColor,
                                        child: Icon(
                                          Icons.shopping_cart,
                                          color: darkGreenTextColor,
                                        ),
                                      )
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                              shadowColor: MaterialStateProperty.all(darkGreenTextColor),
                                              elevation: MaterialStateProperty.all(20),
                                              backgroundColor: MaterialStateProperty.all((darkGreenTextColor)),
                                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              )),
                                              padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15))
                                          ),
                                          onPressed: (){
                                            myCartViewModel.addToList(productDetailPlant!);
                                            Navigator.push(context, MaterialPageRoute(builder: (context){
                                              return MyCart();
                                            }));
                                          },
                                          child:  Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              Icon(Icons.book_outlined,
                                                size: 15,
                                              ),
                                              SizedBox(width: 4,),
                                              Text("Buy now",
                                                style: TextStyle(fontWeight: FontWeight.w600),
                                              )
                                            ],
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 60,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: fieldBackgroundColor,
                      radius: 17,
                      child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_outlined,
                          size: 16,
                        ),
                        color: darkGreenTextColor,

                      ),
                    ),
                    const CircleAvatar(
                      radius: 17,
                      backgroundColor: darkGreenTextColor,
                      child: Icon(Icons.favorite_border,
                        color: fieldBackgroundColor,

                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

      );
  }
}
