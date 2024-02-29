
import 'dart:developer';

import 'package:untitled10/models/tv_shows_model.dart';
import 'package:untitled10/utilities/api_services.dart';

import '../utilities/services.dart';

class TvShowsServices{
  static ApiServices apiServices=ApiServices();
  static Future<TvShowsModel?>getTvShowsData() async {
    dynamic data = apiServices.request(Services.TvShowsEndPoint, "get",hedears: {
      "Accept":"application/json",
      "authorization":"Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjOTQ5YTBlMDliMDZmYmM4N2NhY2ZiZWY0YzUwNDk2MyIsInN1YiI6IjYwNjczMjU2OTQwOGVjMDA3OGFhZDU3OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Cc6geu9ql9U2MkchIXPko0pu8_GpNFZGHjp00kjz5I4"});
    if(data!= null)
    {
      return TvShowsModel.fromJson(data);
    }else{
      return null;
    }


  }


}