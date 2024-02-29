import '../models/movie_model.dart';
import '../utilities/api_services.dart';
import '../utilities/services.dart';

class MovieServices{
  static ApiServices apiServices=ApiServices();
  static Future<MovieModel?>getMoviesData() async {
    dynamic data = apiServices.request(Services.MoviesEndPoint, "get",hedears: {
      "Accept":"application/json",
      "authorization":"Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjOTQ5YTBlMDliMDZmYmM4N2NhY2ZiZWY0YzUwNDk2MyIsInN1YiI6IjYwNjczMjU2OTQwOGVjMDA3OGFhZDU3OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Cc6geu9ql9U2MkchIXPko0pu8_GpNFZGHjp00kjz5I4"});
    if(data!= null)
    {
      return MovieModel.fromJson(data);
    }else{
      return null;
    }


  }

}