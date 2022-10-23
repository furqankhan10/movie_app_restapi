class DemoModel{
  DemoModel({this.results});
  List<Results>? results;

  DemoModel.fromJson(dynamic json) {
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
  }

}


class Results{
  Results({this.posterPath});
  String? posterPath;

  Results.fromJson(dynamic json){
    posterPath = json['poster_path'];
  }
}