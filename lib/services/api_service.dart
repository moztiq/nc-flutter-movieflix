import 'dart:convert';

import "package:http/http.dart" as http;
import 'package:nc_flutter_movieflix/models/movie_detail_model.dart';
import 'package:nc_flutter_movieflix/models/movie_model.dart';

class ApiService {
  static const String baseUrl = 'https://movies-api.nomadcoders.workers.dev';
  static const String imageBaseUrl = 'https://image.tmdb.org/t/p/w500';

  static Future<List<MovieModel>> getPopularMovies() async {
    final url = Uri.parse('$baseUrl/popular');
    return await getMovies(url);
  }

  static Future<List<MovieModel>> getNowPlayingMovies() async {
    final url = Uri.parse('$baseUrl/now-playing');
    return await getMovies(url);
  }

  static Future<List<MovieModel>> getComingSoonMovies() async {
    final url = Uri.parse('$baseUrl/coming-soon');
    return await getMovies(url);
  }

  static Future<List<MovieModel>> getMovies(Uri url) async {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<MovieModel> movieInstances = [];
      final result = jsonDecode(response.body);
      final movies = result['results'];
      for (var movie in movies) {
        if (movie['backdrop_path'] != null) {
          movieInstances.add(MovieModel.fromJson(movie));
        }
      }
      return movieInstances;
    }
    throw Error();
  }

  static Future<MovieDetailModel> getMovie(int id) async {
    final url = Uri.parse('$baseUrl/movie?id=$id');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final movie = jsonDecode(response.body);
      return MovieDetailModel.fromJson(movie);
    }
    throw Error();
  }
}
