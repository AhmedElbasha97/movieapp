import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:testmovieapp/ui/auth/sign_up/sign_up_screen/sign_up_screen.dart';
import 'package:testmovieapp/ui/welcome/welcome_screen/welcome_screen.dart';
import 'package:testmovieapp/widgets/custom_text_form_field.dart';
import 'package:testmovieapp/widgets/custom_elevated_burron.dart';
import '../../forget_password/forget_password_screen/forget_password_screen.dart';
import '../sign_in_controller/sign_in_controller.dart';
class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  TextEditingController email_controller = new TextEditingController();
  TextEditingController password_controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
        init: SignInController(),
    builder: (SignInController controller) {
    return Scaffold(body:SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start
        ,
        children: [Padding(
          padding: const EdgeInsets.only(right: 318.0,top:70),
          child:
          IconButton(icon: Icon(Icons.keyboard_backspace_sharp,size: 33,weight: 15.0,), onPressed: () { Get.to(()=>WelcomeScreen()); },),
        ),Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Center(child: Container(height: 130,width: 130,decoration:
          BoxDecoration(image: DecorationImage(image:AssetImage
            ("assets/images/Group 5.png") ,fit: BoxFit.fill)))),
        ),
          Padding(
            padding: const EdgeInsets.only(bottom: 100.0),
            child: Text("Login to your Account",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
          ),Container(width:Get.width,height:480,decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15.0,
                ),

              ],color: Colors.white,border:Border(top: BorderSide(color:Colors.white))
              ,borderRadius: BorderRadius.only(topLeft: Radius.circular(35),
              topRight: Radius.circular(35)) ),child:
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [Padding(
              padding: const EdgeInsets.only(left: 30.0,top:65),
              child: Text("Email",
                style: TextStyle(color: Color(0xff0A0A0A),
                    fontWeight: FontWeight.w700,fontSize: 20),),
            ),
              Padding(
                padding: const EdgeInsets.only(left: 27.0,right: 20.0,top: 10),
                child:
                CustomTextFormField(controller:email_controller , onChange: (String){}, validator: (String){},
                  keyboardType: TextInputType.emailAddress, isPassField: false, textFieldTitle: '      Enter your email',),
              ),  Padding(
                padding: const EdgeInsets.only(left: 30.0,top: 30),
                child: Text("Password", style: TextStyle(color: Color(0xff0A0A0A),
                    fontWeight: FontWeight.w700,fontSize: 20)),
              ),Padding(
                padding: const EdgeInsets.only(left: 27.0,right: 20.0,top: 10),
                child: CustomTextFormField(controller: password_controller, onChange: (String){}, validator:(String){ }, keyboardType:TextInputType.visiblePassword, isPassField:true, textFieldTitle:"     Enter your password"),
              ),Padding(
                padding: const EdgeInsets.only(left: 270.0),
                child: TextButton(onPressed: (){Get.to(()=>ForgetPassword());}, child: Text("Forgot password",style: TextStyle(color: Color(0xff666666),fontWeight: FontWeight.w900),)),
              ),Padding(
                padding: const EdgeInsets.only(left: 65.0,top: 15),
                child: CustomButton(text: 'Sign in', onpressed: () {  }, col: Colors.white,),
              ),Row(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.center,children: [Padding(
                padding: const EdgeInsets.only(bottom: 13.0),
                child: Text("Don’t have an account?",style: TextStyle(color: Color(0xff0A0A0A).withOpacity(0.8),fontWeight: FontWeight.w500),),
              ),
                TextButton(onPressed: (){Get.to(()=>SignUp());}, child: Text("Sign up fo free",style: TextStyle(color: Color(0xff666666),fontWeight: FontWeight.w900),))],)],),),
        ],),
    ));
    });
  }

}
