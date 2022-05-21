import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_3_task_2_antonx/core/view_models/base_view_model.dart';
import 'package:week_3_task_2_antonx/ui/screens/cart_section/my_cart_view_model.dart';
import '../../core/constant/colors.dart';
import 'custom_counter_cart_items.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    MyCartViewModel myCartViewModel = context.watch<MyCartViewModel>();
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
                  color: smallFlowerbackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('assets/kondol5.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7.0,top: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:   [
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('Monstera',
                        style: TextStyle(
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
                    CustomCounterCartItem()
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
                             myCartViewModel.remove();
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
  }
}

