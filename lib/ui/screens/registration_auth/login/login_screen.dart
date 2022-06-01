import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_3_task_2_antonx/ui/screens/registration_auth/login/login_view_model.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/models/login_user.dart';
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
                        hintText: "Email",
                        //errorText: loginViewModel.getName.error,
                        icon: Icons.account_circle,
                        iconColor: darkGreenTextColor,
                        controller: TextEditingController(text: model.loginUser.email),
                        validation: (String? value) {
                          if(value==null || value==""){
                            return "Enter email";
                          }if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
                            return ("Please Enter a valid email");
                          }
                          else{
                            return null;
                          }
                        },
                        onChanged: (String value){
                          model.loginUser.email=value;
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
                        iconColor: darkGreenTextColor,
                        controller: TextEditingController(text: model.loginUser.password),
                        validation: (String? value){
                          RegExp regex = RegExp(r'^.{6,}$');
                          if(value == null || value == ""){
                            return "Password is required for login";
                          }
                          if (!regex.hasMatch(value)) {
                            return ("Enter Valid Password(Min. 6 Character)");
                          }
                          else{
                            return null;
                          }
                        },
                        onChanged: (String value){
                          model.loginUser.password=value;
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
                            onPressed: () async {
                              debugPrint("login click");
                              if(formKey.currentState!.validate()){
                                debugPrint("valid");
                                await model.loginWithEmailPassword(context);
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
