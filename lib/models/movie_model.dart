class MovieModel {
  final String title;
  final String backdropPath;
  final int id;

  MovieModel.fromJson(Map<String, dynamic> json)
      : backdropPath = json['backdrop_path'],
        title = json['title'],
        id = json['id'];
}
