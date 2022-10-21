
import 'package:bloc_pattern_movie_app/src/models/ItemModel.dart';
import 'package:bloc_pattern_movie_app/src/resources/movie_api_provider.dart';

class Repository{
  MovieApiProvider movieApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() async{
    final result =  await movieApiProvider.fetchMovieList();
    return result;
   }
}