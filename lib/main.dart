import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:week_3_task_2_antonx/ui/screens/cart_section/cart_item/cart_item_view_model.dart';
import 'package:week_3_task_2_antonx/ui/screens/cart_section/my_cart/my_cart_view_model.dart';
import 'package:week_3_task_2_antonx/ui/screens/registration_auth/login/login_screen.dart';
import 'package:week_3_task_2_antonx/ui/screens/registration_auth/login/login_view_model.dart';
import 'package:week_3_task_2_antonx/ui/screens/registration_auth/sign_up/sign_up_view_model.dart';

import 'core/view_models/base_view_model.dart';

void main(){
  //setupLocator();
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (_){
                return CartItemViewModel();
          }),
          ChangeNotifierProvider(
              create: (_){
                return MyCartViewModel();
              }),
          ChangeNotifierProvider(
              create: (_){
                return LoginViewModel();
              }),
          ChangeNotifierProvider(
              create: (_){
                return SignUpViewModel();
              })
        ],
      child: MyApp(),
    )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360 , 690),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}