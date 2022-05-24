import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_3_task_2_antonx/ui/screens/cart_section/my_cart/my_cart_view_model.dart';
import '../../core/constant/colors.dart';
import '../screens/cart_section/my_cart/my_cart.dart';

class CartBadge extends StatelessWidget {

  bool check = false;

  @override
  Widget build(BuildContext context) {
    MyCartViewModel myCartViewModel = context.watch<MyCartViewModel>();

    int count = myCartViewModel.cartList.length;
    if (count > 0) {
      check = true;
    }else{
      check=false;
    }

    return IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const MyCart();
          }));
        },
        iconSize: 40,
        icon: CircleAvatar(
          backgroundColor: darkGreenTextColor,
          child: Badge(
            showBadge: check,
            badgeColor: Colors.white,
            badgeContent: Text(myCartViewModel.cartList.length.toString()),
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        )
    );
  }
}
