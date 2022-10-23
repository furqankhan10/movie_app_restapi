import 'dart:convert';

import 'package:bloc_pattern_movie_app/src/models/ItemModel.dart';
import 'package:http/http.dart' as http;

class MovieApiProvider{

  final _apiKey = 'd5de8849bf12281927f86b94bad62966';

 Future<ItemModel> fetchMovieList() async{
    final response = await http.get(Uri.parse('http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey'));
    print(response.body);
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
     return ItemModel.fromJson(data);
    }else{
      throw Exception('Failed to load post');
    }
  }
}