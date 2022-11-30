import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:movie_app/entities/movie.dart';

class MovieServices {
  final Dio _dio = Dio();
  final String baseUrl = "http://10.0.2.2:8000";
  Future<List<Movie>?> getInTheater() async {
    try {
      Response result = await _dio.get("$baseUrl/api/v1/movies",
          options: Options(headers: {
            "Content-Type": "application/json",
            "Authorization":
                "Bearer eyJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6ImFndW5nd2lqYXk3NjFAZ21haWwuY29tIiwidXNlcl9pZCI6MSwiaWF0IjoxNjY5NzQwMzMzfQ.fumv0M2SNpFX0gcSvSfdbrWzw5A1veLBrcJ1wpgOlVs",
          }));
      List<Movie> movieList =
          (result.data['data'] as List).map((e) => Movie.fromJson(e)).toList();

      return movieList;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
