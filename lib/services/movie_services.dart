import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        "${dotenv.env['tmdb_api_url']}/movie/$id?api_key=${dotenv.env['tmdb_api_key']}&language=en-US&append_to_response=credits,videos,reviews,similar",
      );
      MovieDetail movie = MovieDetail.fromJson(result.data);
      return ApiResult.success(movie);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<TvDetail>> getTvDetail(int id) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['tmdb_api_url']}/tv/$id?api_key=${dotenv.env['tmdb_api_key']}&language=en-US&append_to_response=aggregate_credits,videos,reviews,similar",
      );
      TvDetail tv = TvDetail.fromJson(result.data);
      return ApiResult.success(tv);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<List<TvEpisode>>> getSeasonEpisode(
      {required int seriesId, required seasonId}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['tmdb_api_url']}/tv/$seriesId/season/$seasonId?api_key=${dotenv.env['tmdb_api_key']}&language=en-US",
      );
      List<TvEpisode> tv = (result.data["episodes"] as List)
          .map((e) => TvEpisode.fromJson(e))
          .toList();
      return ApiResult.success(tv);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<PersonCredits>> getPersonCredits(int id) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['tmdb_api_url']}/person/$id?api_key=${dotenv.env['tmdb_api_key']}&language=en-US&append_to_response=movie_credits,tv_credits",
      );
      PersonCredits personCredits = PersonCredits(
          movieCredits: (result.data['movie_credits']['cast'] as List)
              .map((e) => TMDBMovie.fromJson(e))
              .toList(),
          tvCredits: (result.data['tv_credits']['cast'] as List)
              .map((e) => TMDBTv.fromJson(e))
              .toList());
      return ApiResult.success(personCredits);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<TMDBSearchResult>> search({required String query}) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool adult = pref.getBool("adult") ?? false;
    try {
      Response movieResult = await _dio.get(
          "${dotenv.env['tmdb_api_url']}/search/movie?api_key=${dotenv.env['tmdb_api_key']}&language=en-US&query=$query&include_adult=$adult");
      Response tvResult = await _dio.get(
          "${dotenv.env['tmdb_api_url']}/search/tv?api_key=${dotenv.env['tmdb_api_key']}&language=en-US&query=$query&include_adult=$adult");
      Response personResult = await _dio.get(
          "${dotenv.env['tmdb_api_url']}/search/person?api_key=${dotenv.env['tmdb_api_key']}&language=en-US&query=$query&include_adult=$adult");

      List<TMDBMovie> movieList = (movieResult.data['results'] as List)
          .map((e) => TMDBMovie.fromJson(e))
          .toList();
      List<TMDBTv> tvList = (tvResult.data['results'] as List)
          .map((e) => TMDBTv.fromJson(e))
          .toList();
      List<TMDBPerson> personList = (personResult.data['results'] as List)
          .map((e) => TMDBPerson.fromJson(e))
          .toList();
      TMDBSearchResult result = TMDBSearchResult();
      result.movieList = movieList;
      result.tvList = tvList;
      result.personList = personList;
      result.inTheaterList = [];
      if (result.movieList.isNotEmpty) {
        Response inTheater =
            await _dio.get("${dotenv.env['local_api_url']}/movies");
        List<Movie> inTheaterList = (inTheater.data['data'] as List)
            .map((e) => Movie.fromJson(e))
            .toList();
        for (int i = 0; i < result.movieList.length; i++) {
          for (int j = 0; j < inTheaterList.length; j++) {
            if (result.movieList.elementAt(i).id.toString() ==
                inTheaterList.elementAt(j).tmdbId) {
              result.inTheaterList.add(inTheaterList.elementAt(j));
              result.movieList.removeAt(i);
            }
          }
        }

        return ApiResult.success(result);
      } else {
        return ApiResult.success(result);
      }
    } on DioError catch (e) {
      return ApiResult.failed(e.response.toString());
    }
  }

  Future<ApiResult<TMDBSearchResult>> searchByGenre(
      {required DiscoverCategory id}) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool adult = pref.getBool("adult") ?? false;
    try {
      TMDBSearchResult resultList = TMDBSearchResult();
      Response movieResult = await _dio.get(
          "${dotenv.env['tmdb_api_url']}/discover/movie?api_key=${dotenv.env['tmdb_api_key']}&language=en-US&with_genres=${id.movieId}&include_adult=$adult");
      List<TMDBMovie> movieList = (movieResult.data['results'] as List)
          .map((e) => TMDBMovie.fromJson(e))
          .toList();
      Response tvResult = await _dio.get(
          "${dotenv.env['tmdb_api_url']}/discover/tv?api_key=${dotenv.env['tmdb_api_key']}&language=en-US&with_genres=${id.tvId}&include_adult=$adult");
      List<TMDBTv> tvList = (tvResult.data['results'] as List)
          .map((e) => TMDBTv.fromJson(e))
          .toList();
      resultList.movieList = movieList;
      resultList.tvList = tvList;
      resultList.inTheaterList = [];
      if (resultList.movieList.isNotEmpty) {
        Response inTheater =
            await _dio.get("${dotenv.env['local_api_url']}/movies");
        List<Movie> inTheaterList = (inTheater.data['data'] as List)
            .map((e) => Movie.fromJson(e))
            .toList();
        for (int i = 0; i < resultList.movieList.length; i++) {
          for (int j = 0; j < inTheaterList.length; j++) {
            if (movieList.elementAt(i).id.toString() ==
                inTheaterList.elementAt(j).tmdbId) {
              resultList.inTheaterList.add(inTheaterList.elementAt(j));
              resultList.movieList.removeAt(i);
            }
          }
        }
        return ApiResult.success(resultList);
      } else {
        return ApiResult.success(resultList);
      }
    } on DioError catch (e) {
      return ApiResult.failed(e.response.toString());
    }
  }

  List<DiscoverCategory> getDiscoverItems() {
    return [
      DiscoverCategory(
          name: "Trend Now",
          movieId: 1,
          bgColor: const Color.fromARGB(226, 0, 0, 0)),
      DiscoverCategory(
          name: "TMDB Choice",
          movieId: 2,
          bgColor: const Color.fromARGB(226, 0, 0, 0),
          gradient1: const Color(0XFF01b4e4),
          gradient2: const Color(0XFF90cea1)),
      DiscoverCategory(
        name: "Action",
        movieId: 28,
        poster: "assets/background/action.jpeg",
      ),
      DiscoverCategory(
          name: "Comedy",
          movieId: 35,
          tvId: 35,
          poster: "assets/background/comedy.jpeg",
          gradient1: const Color(0XFF42E695),
          gradient2: const Color(0XFF388288)),
      DiscoverCategory(
          name: "Drama",
          movieId: 18,
          tvId: 18,
          poster: "assets/background/kdrama.jpeg",
          gradient1: const Color(0XFFFDC094),
          gradient2: const Color(0XFFFF9190)),
      DiscoverCategory(
        name: "Romance",
        movieId: 10749,
        poster: "assets/background/romance.jpeg",
      ),
      DiscoverCategory(
          name: "Horror",
          movieId: 27,
          poster: "assets/background/horror.jpeg",
          gradient1: const Color(0XFF01b4e4),
          gradient2: const Color(0XFF90cea1)),
      DiscoverCategory(
        name: "Thriller",
        movieId: 53,
        poster: "assets/background/thriller.jpeg",
      ),
      DiscoverCategory(
        name: "Anime",
        tvId: 16,
        movieId: 16,
        poster: "assets/background/anime.jpeg",
      ),
      DiscoverCategory(
          name: "Reality",
          movieId: 10764,
          poster: "assets/background/sport.jpeg",
          gradient1: const Color(0XFFFF9190),
          gradient2: const Color(0XFFFDC094)),
      DiscoverCategory(
          name: "Crime",
          movieId: 80,
          tvId: 80,
          poster: "assets/background/classic.jpeg",
          gradient1: const Color(0XFFFDC094),
          gradient2: const Color(0XFFFF9190)),
      DiscoverCategory(
          name: "Western",
          movieId: 37,
          tvId: 37,
          poster: "assets/background/drama.jpeg",
          gradient1: const Color(0XFFFDC094),
          gradient2: const Color(0XFFFF9190)),
    ];
  }
}
