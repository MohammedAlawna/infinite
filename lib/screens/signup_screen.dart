import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:infinite/widgets/text_field_input.dart';

import '../utils/colors.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    bioController.dispose();
    usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 2),
              // SVG Image
              SvgPicture.asset(
                "assets/log.svg",
                color: primaryColor,
                height: 64,
              ),
              const SizedBox(height: 64),
              //circlular widget to accept and show our selected files
              Stack(
                children: [
                  const CircleAvatar(radius: 64,
                   backgroundImage: NetworkImage(
                     'https://cdn.wallpapersafari.com/9/57/PdJiN3.jpg')
                     ,),
                     Positioned(bottom: -10, left: 80, child: IconButton(onPressed: () {}, icon: const Icon(Icons.add_a_photo,),),),
                ],
              ),
              const SizedBox(height: 32,),
              //Text Field For Username
               TextFieldInput(
                hintText: "Enter Your Username..",
                textInputType: TextInputType.text,
                textEditingController: usernameController,
              ),
              const SizedBox(height: 8,),
              //Text Field For

              // Text Field For (Email)
              TextFieldInput(
                hintText: "Enter Your Email..",
                textInputType: TextInputType.emailAddress,
                textEditingController: emailController,
              ),
              const SizedBox(
                height: 32,
              ),
              TextFieldInput(
                hintText: "Enter Your Password..",
                textInputType: TextInputType.visiblePassword,
                textEditingController: passwordController,
                isPass: true,
              ),
              //Button Login
              const SizedBox(
                height: 32,
              ),
                   TextFieldInput(
                hintText: "Enter Your Bio..",
                textInputType: TextInputType.text,
                textEditingController: bioController,
              ),
              const SizedBox(height: 8,),
              InkWell(
                child: Container(
                  child: const Text('Log In'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    color: goldColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
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
                    onTap: () {},
                    child: Container(
                      child: const Text(
                        "Sign Up!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
