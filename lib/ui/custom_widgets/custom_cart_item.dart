import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_3_task_2_antonx/core/models/cart.dart';
import '../../core/constant/colors.dart';
import '../screens/cart_section/cart/cart_view_model.dart';
import 'custom_counter_cart_items.dart';

class CustomCartItem extends StatelessWidget {

  // Plant? CustomCartItemPlant;
  // int? CustomCartItemId;
  // //
  // CustomCartItem({this.CustomCartItemPlant, this.CustomCartItemId});
  CartModel? CustomCartItemPlant;
  int? CustomCartItemId;
  //
  CustomCartItem({this.CustomCartItemPlant, this.CustomCartItemId});

  @override
  Widget build(BuildContext context) {

    //MyCartViewModel myCartViewModel = context.watch<MyCartViewModel>();
    return Consumer<CartViewModel>(builder: (context,model,child){

      return Container(
          height: 90,
          width: 250,
          // color: Colors.red,
          child: Row(
            children: [
              Container(
                //margin: EdgeInsets.all(8),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: curveColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("${CustomCartItemPlant?.imageUrl}"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7.0,top: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:   [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      // child: Text("${CustomCartItemPlant?.type}",
                      child: Text("${CustomCartItemPlant?.name}",
                        style: const TextStyle(
                            color: darkGreenTextColor,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('its Spines don\'t grow',
                        style: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    CustomCounterCartItem(CustomCartItemPlant: CustomCartItemPlant)
                  ],
                ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton(
                  //iconDisabledColor: Colors.red,
                  iconEnabledColor: darkGreenTextColor,
                  icon: const Icon(Icons.more_vert_sharp),
                  menuMaxHeight: 25,
                  onChanged: (String? newValue) {},
                  items: <String>['Delete'].map<DropdownMenuItem<String>>(
                        (String value) {
                      return DropdownMenuItem<String>(
                        onTap: () {
                          //model.remove(CustomCartItemId);
                          model.deleteCar(CustomCartItemPlant!.cartId!, CustomCartItemId!);
                        },
                        value: value,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text(
                                value,
                                style: const TextStyle(
                                    fontSize: 15, color: darkGreenTextColor),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ],
          )
      );
    });
  }
}

