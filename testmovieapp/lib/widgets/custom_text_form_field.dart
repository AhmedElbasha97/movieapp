import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.controller, required this.onChange, required this.validator, required this.keyboardType, required this.isPassField, required this.textFieldTitle, required this.col, required this.icon}) : super(key: key);
  final TextEditingController controller;
  final Function(String) onChange;
  final String?Function(String?) validator;
  final TextInputType keyboardType;
  final bool isPassField;
  final String textFieldTitle;
  final Color col ;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(0.2),
          blurRadius: 5.0,
          spreadRadius:0.1,)],color:col
          ,borderRadius: BorderRadius.circular(15),border: Border(top:
          BorderSide(color:Color(0xFF0A0A0A),width: 1.5)
              ,left: BorderSide(color:Color(0xFF0A0A0A),
                  width: 0.5),right: BorderSide(color:Color(0xFF0A0A0A),
                  width: 1.5),bottom:BorderSide(color:Color(0xFF0A0A0A),width: 1.5))),
      child: TextFormField(validator: validator,controller: controller,onChanged: onChange,obscureText: isPassField,keyboardType: keyboardType,
          decoration:InputDecoration(
            suffixIcon: icon,
            hintText:"${textFieldTitle}",hintStyle:
          TextStyle(color:  Color(0xff0A0A0A).withOpacity(0.7),
              fontWeight: FontWeight.w400,fontSize: 17)
            ,focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ) ),
    );
  }
}