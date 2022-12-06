import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/movie.dart';

class MovieServices {
  final Dio _dio = Dio();
  Future<List<Movie>?> getInTheater() async {
    try {
      Response result = await _dio.get("${dotenv.env['local_api_url']}/movies");
      List<Movie> movieList =
          (result.data['data'] as List).map((e) => Movie.fromJson(e)).toList();

      return movieList;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  Future<MovieDetail?> getMovieDetail(int id) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['tmdb_api_url']}/movie/$id?api_key=${dotenv.env['tmdb_api_key']}&language=en-US",
      );
      log(result.toString());
      MovieDetail movie = MovieDetail.fromJson(result.data);
      return movie;
    } on DioError catch (e) {
      log(e.response.toString());
      return null;
    }
  }
}
