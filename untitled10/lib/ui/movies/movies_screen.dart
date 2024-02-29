import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:untitled10/ui/movies/movies_controller.dart';
import 'package:untitled10/utilities/constants.dart';

import '../../models/movie_model.dart';

class Movies extends StatelessWidget {

 const Movies({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<MoviesController>(
        init: MoviesController(),
    builder: (MoviesController controller) {
    return Scaffold(body:controller.isLoading? Center(
      child: LoadingAnimationWidget.twistingDots(
        leftDotColor: const Color(0xFFe9d9e9),
        rightDotColor: const Color(0xFF8a81d2),
        size: 200,
      ),
    ):Column(children: [SizedBox(height: 50,),Row(children:
    [IconButton(onPressed: (){},
        icon:Icon(Icons.keyboard_backspace_outlined,color: Color(0xff5F6162),size: 35,)),
    Text("Movies",style: TextStyle(color:Color(0xff5F6162),fontFamily: kPoppins,fontWeight: FontWeight.w500,fontSize: 25 ),),
    SizedBox(width: 185),IconButton(onPressed: (){controller.getdata();}, icon: Image(image: AssetImage("assets/images/SearchIcon.png"),))],),
    Container(height: Get.height*0.88,width: Get.width*0.94,child: ListView.builder(itemCount:controller.data?.results?.length,itemBuilder: (context, index) {
    return Column(
      children: [
        InkWell(
          onTap:(){},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 172,width:130,
                decoration: BoxDecoration(border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20)
              ),child: Image(image:
                NetworkImage("https://api.themoviedb.org/3/movie/movie_id/images${controller.data?.results?[index].posterPath??""}"),fit: BoxFit.fill,) ,),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 12),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment:
                CrossAxisAlignment.start,children: [Text(controller.data?.results?[index].originalTitle??"",
                  style: TextStyle(fontSize: 20,fontFamily: kPoppins
                      ,fontWeight: FontWeight.w700),),
                  SizedBox(height:5,),
                  Text(controller.data?.results?[index].releaseDate??"",style: TextStyle(color: Color(0xff1F2020),fontWeight: FontWeight.w500,
                fontFamily: kPoppins,fontSize: 10),),
                SizedBox(height: 5,),
                Text("Genere : ${controller.data?.results?[index].genreIds}",style: TextStyle(fontSize: 10,fontFamily: kPoppins,fontWeight: FontWeight.w500),),
                SizedBox(height: 30,),
                InkWell(onTap: (){},child: Container(child: Row(children: [SizedBox(width: 2,),Icon(Icons.add,size: 18,),SizedBox(width: 4,),Text("My List",style: TextStyle(fontSize: 9.38,fontFamily: kPoppins,fontWeight: FontWeight.w500),)],),width: 70,height: 20,decoration: BoxDecoration(border: Border.all(color: Color(0xff0A0A0A)),borderRadius: BorderRadius.circular(25)),))],),
              )
            ],
          ),
        ),SizedBox(height: 8,),
      ],
    );} ),)],) ,);
  }
    );
  }}
