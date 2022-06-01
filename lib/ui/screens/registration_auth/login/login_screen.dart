import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_3_task_2_antonx/ui/screens/registration_auth/login/login_view_model.dart';
import '../../../../core/constant/colors.dart';
import '../../../custom_widgets/input_text_form_field.dart';
import '../../../custom_widgets/my_custom_clipper.dart';
import '../../../custom_widgets/rounded_rectangular_button.dart';
import '../../home/home_screen.dart';
import '../sign_up/sign_up_screen.dart';

class LoginScreen extends  StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var formKey = GlobalKey<FormState>();
  var textFormNameController = TextEditingController();
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return  Consumer<LoginViewModel>(builder: (context, model, child){
      return  Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                child: Image.asset("assets/top.jpeg"),
                clipper: MyClipper(),
              ),
              const SizedBox(height: 20,),
              Stack(
                overflow: Overflow.visible,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 90.0),
                    child: Column(
                        children: const [
                          Text('Welcome back',
                            style: TextStyle(
                                color: darkGreenTextColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 30.0
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('login to your account',
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
                    padding: const EdgeInsets.only(left: 280.0,top: 2),
                    child: SizedBox(
                        height: 70,
                        child: Image.asset("assets/leaf6.png",)
                    ),
                  )
                ],
              ),
              Form(
                key: formKey,
                child:  Column(
                  children: [
                    const SizedBox(height: 16,),
                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 15,right: 15),
                      child: InputTextFormField(
                        hintText: "Full name",
                        //errorText: loginViewModel.getName.error,
                        icon: Icons.account_circle,
                        iconColor: darkGreenTextColor,
                        validator: model.fullNameValidator,
                        onChanged: (String value){
                          //loginViewModel.changeName(value);
                          model.changeName(value);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                      child: InputTextFormField(
                        hintText: 'password',
                        //errorText: loginViewModel.getPassword.error,
                        icon: Icons.lock,
                        isPasswordActive: true,
                        validator: model.passwordNameValidator,
                        iconColor: darkGreenTextColor,
                        onChanged: (String value){
                          model.changePassword(value);
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            activeColor: darkGreenTextColor,
                            shape: const CircleBorder(),
                            value: isChecked,
                            onChanged: (selectedValue){
                              setState(() {
                                isChecked = selectedValue;
                              });
                            }
                        ),
                        const Text('Remember me',
                          style: TextStyle(
                              color: greyColor
                          ),
                        ),
                        const SizedBox(width: 85,),
                        const Text('forgote password?',
                          style: TextStyle(
                              color: darkGreenTextColor,
                              fontWeight: FontWeight.w700
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15,top: 100),
                        child:  RoundedRectangularButton(
                            text: 'Login',
                            buttonColor: darkGreenTextColor,
                            onPressed: () {
                              print("login click");
                              if(formKey.currentState!.validate()){
                                print("valid");

                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return HomeScreen();
                                }));
                              }
                            }
                        )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const Text("Don't have an account?",
                          style: TextStyle(
                              color: greyColor,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        TextButton(
                            style: const ButtonStyle(
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return SignUpScreen();
                              }));

                            },
                            child: const Text('Sign up',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: darkGreenTextColor,
                                  fontWeight: FontWeight.w600
                              ),
                            )
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
    );
  }
}
