import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:testmovieapp/ui/welcome/welcome_screen/welcome_screen.dart';
import 'package:testmovieapp/widgets/custom_text_form_field.dart';
import 'package:testmovieapp/widgets/custom_elevated_burron.dart';

import '../../../profile/profile_screen/profile_screen.dart';
import '../sign_up_controller/sign_up_controller.dart';
class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  TextEditingController email_controller = new TextEditingController();
  TextEditingController password_controller = new TextEditingController();
  TextEditingController phoneNumber_controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<SignUpController>(
        init: SignUpController(),
    builder: (SignUpController controller) {
      return Scaffold(body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start
          ,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 318.0, top: 50),
              child:
              IconButton(icon: Icon(
                Icons.keyboard_backspace_sharp, size: 33, weight: 15.0,),
                onPressed: () {
                  Get.to(() => WelcomeScreen());
                },),
            ),
            Center(child: Container(height: 110, width: 110, decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage
              ("assets/images/Group 5.png"), fit: BoxFit.fill)))),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text("Create your Account",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),),
            ),
            Container(width: Get.width, height: 580, decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15.0,
                  ),

                ],
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.white))
                ,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))), child:
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 25),
                  child: Text("Email",
                    style: TextStyle(color: Color(0xff0A0A0A),
                        fontWeight: FontWeight.w600, fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 27.0, right: 20.0, top: 10),
                  child:
                  CustomTextFormField(controller: email_controller,
                    onChange: (String) {},
                    validator: (String) {},
                    keyboardType: TextInputType.emailAddress,
                    isPassField: false,
                    textFieldTitle: '      Enter your email',),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                  child: Text("Phone NO", style: TextStyle(
                      color: Color(0xff0A0A0A),
                      fontWeight: FontWeight.w600, fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 27.0, right: 20.0, top: 10),
                  child: CustomTextFormField(controller: phoneNumber_controller,
                      onChange: (String) {},
                      validator: (String) {},
                      keyboardType: TextInputType.visiblePassword,
                      isPassField: true,
                      textFieldTitle: "     Enter your Phone-no"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                  child: Text("Password", style: TextStyle(
                      color: Color(0xff0A0A0A),
                      fontWeight: FontWeight.w600, fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 27.0, right: 20.0, top: 10),
                  child: CustomTextFormField(controller: password_controller,
                      onChange: (String) {},
                      validator: (String) {},
                      keyboardType: TextInputType.visiblePassword,
                      isPassField: true,
                      textFieldTitle: "     Enter your password"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                  child: Text("Confirm Password", style: TextStyle(
                      color: Color(0xff0A0A0A),
                      fontWeight: FontWeight.w600, fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 27.0, right: 20.0, top: 10),
                  child: CustomTextFormField(controller: password_controller,
                      onChange: (String) {},
                      validator: (String) {},
                      keyboardType: TextInputType.visiblePassword,
                      isPassField: true,
                      textFieldTitle: "     Re-enter password"),
                )
                ,
                Padding(
                  padding: const EdgeInsets.only(left: 65.0, top: 28),
                  child: CustomButton(
                    text: 'Sign in', onpressed: () {}, col: Colors.white,),
                ),
                Row(crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Padding(
                    padding: const EdgeInsets.only(bottom: 13.0),
                    child: Text("Already have an account!!", style: TextStyle(
                        color: Color(0xff0A0A0A).withOpacity(0.8),
                        fontWeight: FontWeight.w500),),
                  ),
                    TextButton(onPressed: () {
                      if (controller.formkey.currentState!.validate())
                        controller.signUp();
                      Get.to(() => Profile());
                    }, child: Text("Sign Up", style: TextStyle(
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w900),))
                  ],)
              ],),),
          ],),
      ));
    } );
    }
  }