import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:untitled10/models/tv_shows_model.dart';
import 'package:untitled10/services/tv_shows_services.dart';

class TvShowsController extends GetxController{

 late TvShowsModel? data;
 bool isLoading = true;
 @override
 onInit()  {
   super.onInit();
   getdata();
 }
  void getdata() async
  {
    data = await TvShowsServices.getTvShowsData();

    if(data == null)
    {
      print("some error occured");
    }else{
      print(data?.results?[0].originalName);
    }
    isLoading= false;
    update();
  }
}
