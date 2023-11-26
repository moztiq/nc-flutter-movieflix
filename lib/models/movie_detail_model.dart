class MovieDetailModel {
  final bool adult;
  final String title, releaseDate, posterPath, overview;
  final List<dynamic> genres;
  final double? voteAverage;
  final int? voteCount;
  final int runtime;
  final String backdropPath;

  MovieDetailModel.fromJson(Map<String, dynamic> json)
      : adult = json['adult'],
        title = json['title'],
        releaseDate = json['release_date'],
        posterPath = json['poster_path'],
        overview = json['overview'],
        genres = json['genres'],
        voteAverage = json['vote_average'],
        voteCount = json['vote_count'],
        runtime = json['runtime'],
        backdropPath = json['backdrop_path'];
}
