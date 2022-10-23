
import 'package:bloc_pattern_movie_app/src/models/ItemModel.dart';
import 'package:bloc_pattern_movie_app/src/resources/repository.dart';
import 'package:rxdart/subjects.dart';

class MoviesBloc{
  final _repository = Repository();

  final _moviesFetcher = PublishSubject<ItemModel>();

  Stream<ItemModel> get allMovies => _moviesFetcher.stream;

  fetchAllMovies() async{
    ItemModel itemModel = await _repository.fetchAllMovies();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose(){
    _moviesFetcher.close();
  }
}

final bloc = MoviesBloc();