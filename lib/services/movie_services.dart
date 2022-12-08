import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/entities/movie.dart';

class MovieServices {
  final Dio _dio = Dio(BaseOptions(connectTimeout: 5000));
  Future<ApiResult<List<Movie>>> getInTheater() async {
    try {
      Response result = await _dio.get("${dotenv.env['local_api_url']}/movies");
      List<Movie> movieList =
          (result.data['data'] as List).map((e) => Movie.fromJson(e)).toList();

      return ApiResult.success(movieList);
    } on DioError catch (e) {
      return ApiResult.failed(e.response.toString());
    }
  }

  Future<ApiResult<MovieDetail>> getMovieDetail(int id) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['tmdb_api_url']}/movie/$id?api_key=${dotenv.env['tmdb_api_key']}&language=en-US",
      );
      MovieDetail movie = MovieDetail.fromJson(result.data);
      return ApiResult.success(movie);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }
}
