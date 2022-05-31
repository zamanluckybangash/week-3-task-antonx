import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:week_3_task_2_antonx/ui/screens/cart_section/my_cart/my_cart_view_model.dart';
import 'package:week_3_task_2_antonx/ui/screens/home/home_screen_view_model.dart';
import 'package:week_3_task_2_antonx/ui/screens/registration_auth/login/login_screen.dart';
import 'package:week_3_task_2_antonx/ui/screens/registration_auth/login/login_view_model.dart';
import 'package:week_3_task_2_antonx/ui/screens/registration_auth/sign_up/sign_up_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (_){
                return MyCartViewModel();
              }),
          ChangeNotifierProvider(
              create: (_){
                return SignUpViewModel();
              }),
          ChangeNotifierProvider(
              create: (_){
                return HomeScreenViewModel();
              })
        ],
      child: const MyApp(),
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