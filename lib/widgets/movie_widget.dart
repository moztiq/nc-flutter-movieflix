import 'package:flutter/material.dart';
import 'package:nc_flutter_movieflix/services/api_service.dart';

import '../models/movie_model.dart';
import '../screens/detail_screen.dart';

class MovieWidget extends StatelessWidget {
  const MovieWidget({
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
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.hardEdge,
        width: 350,
        child: Image.network(
          '${ApiService.imageBaseUrl}${movie.backdropPath}',
        ),
      ),
    );
  }
}
