
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:untitled10/models/movie_model.dart';
import 'package:untitled10/services/movie_services.dart';

import '../../models/tv_shows_model.dart';

class MoviesController extends GetxController{

 late MovieModel? data ;
 bool isLoading = true;
 @override
 onInit()  {
   super.onInit();
   getdata();
 }
   void getdata() async
  {

     data = await MovieServices.getMoviesData();
    if(data == null)
    {
      print("some error occured");
    }else{
      print(data?.results?[0]);
    } isLoading= false;
     update();
  }


}
