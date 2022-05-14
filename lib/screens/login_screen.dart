import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite/utils/colors.dart';
import 'package:infinite/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding:const  EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 2),
              // SVG Image
              SvgPicture.asset
              ("assets/log.svg",
               color: primaryColor,
                height: 64,
                ),
               const SizedBox(height: 64),
              // Text Field For (Email)
              TextFieldInput(
                hintText: "Enter Your Email..",
                textInputType: TextInputType.emailAddress,
                textEditingController: emailController,
              ),
               const SizedBox(height: 32,),
               TextFieldInput(
                 hintText: "Enter Your Password..",
                 textInputType: TextInputType.visiblePassword,
                 textEditingController: passwordController,
                 isPass: true,
               ),
              //Button Login
               const SizedBox(height: 32,),
              InkWell(
                child: Container(
                  child: const Text('Log In'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all
                    (Radius.circular(4),
                    ),
                  ),
                 
                  color: goldColor,
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              //Transitioning to Signup.
              Flexible(child: Container(), flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text("New Here?"),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      ),

                  ),
                     GestureDetector(
                       onTap: () {
                         
                       },
                       child: Container(
                    child: const Text("Sign Up!", style: TextStyle(fontWeight: FontWeight.bold,),),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        ),

                  ),
                     ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}