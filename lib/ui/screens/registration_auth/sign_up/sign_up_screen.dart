import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_3_task_2_antonx/ui/screens/registration_auth/sign_up/sign_up_view_model.dart';
import '../../../../core/constant/colors.dart';
import '../../../custom_widgets/bottom_text.dart';
import '../../../custom_widgets/input_text_form_field.dart';
import '../../../custom_widgets/rounded_rectangular_button.dart';
import '../../home/home_screen.dart';
import '../login/login_screen.dart';

class SignUpScreen extends StatefulWidget {

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    //final signUpViewModel = Provider.of<SignUpViewModel>(context);
    return ChangeNotifierProvider(
        create: (_){
          return SignUpViewModel();
        },
      child: Consumer<SignUpViewModel>(builder: (context , model , child){
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_outlined)
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25,top: 20),
                        child: Column(

                            children: const [
                              Center(
                                child: Text('Register',
                                  style: TextStyle(
                                      color: darkGreenTextColor,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 25.0
                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),
                              Text('Create your new account',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color:greyColor
                                ),
                              ),
                            ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 280.0,top: 20),
                        child: SizedBox(
                            height: 70,
                            child: Image.asset("assets/leaf6.png",)
                        ),
                      ),
                    ],
                  ),
                  Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 40,left: 15,right: 15),
                              child: InputTextFormField(
                                hintText: 'Full name',
                                icon: Icons.account_circle,
                                iconColor: darkGreenTextColor,
                                controller: TextEditingController(text: model.signUpUser.name),
                                validation:(String? value){

                                  RegExp regex = RegExp(r'^.{3,}$');
                                  if(value ==null || value==""){
                                    return "full name can't be null";
                                  }
                                  if (!regex.hasMatch(value)) {
                                    return ("Enter Valid name(Min. 3 Character)");
                                  }
                                  else{
                                    return null;
                                  }
                                },
                                onChanged: (String value){
                                  model.signUpUser.name=value;
                                },
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                              child: InputTextFormField(
                                hintText: 'mzamanshah@gmail.com',
                                icon: Icons.email,
                                iconColor: darkGreenTextColor,
                                controller: TextEditingController(text: model.signUpUser.email),
                                validation:(String? value){
                                  if(value==null || value==""){
                                    return "email error";
                                  }if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
                                    return ("Please Enter a valid email");
                                  }
                                  else{
                                    return null;
                                  }
                                },
                                onChanged: (String value){
                                  model.signUpUser.email=value;
                                },
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                              child: InputTextFormField(
                                hintText: 'Password',
                                isPasswordActive: true,
                                icon: Icons.lock,
                                iconColor: darkGreenTextColor,
                                controller: TextEditingController(text: model.signUpUser.password),
                                validation: (String? value){
                                  RegExp regex = RegExp(r'^.{6,}$');
                                  if(value==null || value==""){
                                    return "Password is required for signUp";
                                  }
                                  if (!regex.hasMatch(value)) {
                                    return ("Enter Valid Password(Min. 6 Character)");
                                  }
                                  else{
                                    return null;
                                  }
                                },
                                onChanged: (String value){
                                  model.signUpUser.password=value;
                                },
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                            child: InputTextFormField(
                              hintText: 'Confirm password',
                              isPasswordActive: true,
                              icon: Icons.lock,
                              iconColor: darkGreenTextColor,
                              controller: TextEditingController(text: model.signUpUser.confirmPassword),
                              validation: (String? value){
                                if(value==null || value==""){
                                  return "confirm password error";
                                }
                                if (model.signUpUser.password !=model.signUpUser.confirmPassword) {
                                  return "Password don't match";
                                }
                                else{
                                  return null;
                                }
                              },
                              onChanged: (String value){
                                model.signUpUser.confirmPassword=value;
                              },
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'By signing you agree to our',
                                          style: TextStyle(
                                              color: darkGreenTextColor,
                                              fontWeight: FontWeight.w600
                                          )
                                      ),
                                      TextSpan(
                                        text: ' team of use\n',
                                        style: TextStyle(
                                            color: greyColor,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      TextSpan(
                                          text: '             and',
                                          style: TextStyle(
                                              color: darkGreenTextColor,
                                              fontWeight: FontWeight.w600
                                          )
                                      ),
                                      TextSpan(
                                        text: ' privicy notice',
                                        style: TextStyle(
                                            color: greyColor,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15,top: 130),
                              child:  RoundedRectangularButton(
                                  text: 'Sign Up',
                                  onPressed: (){
                                    if(formKey.currentState!.validate()){
                                      return Navigator.push(context, MaterialPageRoute(builder: (context){
                                        return HomeScreen();
                                      }));
                                    }
                                  },
                                  buttonColor: darkGreenTextColor)
                          ),
                          BottomText(
                              text: 'Already have an account?',
                              textColo: greyColor,
                              buttonName: 'Log in',
                              buttonTextColo: darkGreenTextColor,
                              onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return LoginScreen();
                                }));
                              }
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
        );
      }
      ),
        );
  }
}