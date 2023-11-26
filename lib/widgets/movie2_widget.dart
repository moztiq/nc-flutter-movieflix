import 'package:flutter/material.dart';
import 'package:nc_flutter_movieflix/services/api_service.dart';

import '../models/movie_model.dart';
import '../screens/detail_screen.dart';

class Movie2Widget extends StatelessWidget {
  const Movie2Widget({
    super.key,
    required this.movie,
  });

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              movie: movie,
            ),
            // fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            clipBehavior: Clip.hardEdge,
            width: 200,
            child: Image.network(
              '${ApiService.imageBaseUrl}${movie.backdropPath}',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 200,
            child: Text(movie.title),
          ),
        ],
      ),
    );
  }
}
