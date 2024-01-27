import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testmovieapp/services/user_auth_services/user_auth_services.dart';

class SignUpController extends GetxController{
  final FirebaseAuthServices auth=FirebaseAuthServices();
  TextEditingController email_controller = new TextEditingController();
  TextEditingController password_controller = new TextEditingController();
  TextEditingController phoneNumber_controller = new TextEditingController();

  final RegExp nameRegExp = RegExp(r"^[a-zA-Z]+$");
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  void onInit(){
    super.onInit();

  }
  onChanged(String val){
    formkey.currentState?.validate();
  }
  String? passwordValidator (String value){
    print(value);
    if(value!.isEmpty){
      return "Please Enter your Password";
    }else if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value))
    {
      return "Please Enter a Valid password";
    }
    return null;
  }
  String? emailValidator (String value){
    print(value);
    if(value!.isEmpty){
      return "Please Enter your Email";
    }else if(!RegExp(r'\S+@\S+\.\S+').hasMatch(value))
    {
      return "Please Enter a Valid Email";
    }
    return null;
  }
  String? phoneNumberValidator (String value)
  {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    if (value!.length == 0) {
      return 'Please enter mobile number';
    }
    else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }


  void signUp()async
  {
    String email=email_controller.text;
    String password=password_controller.text;
    User? user= await auth.signUpwithEmailAndPassword(email, password);
    if(formkey.currentState!.validate())
    {
      if (user!= null )
      {
        print("user is successfully created");
      }else
      {
        print("some error happened");
      }
    }}
  @override
  void dispose()
  {
    super.dispose();
    email_controller.dispose();
    password_controller.dispose();
    phoneNumber_controller.dispose();

  }
}