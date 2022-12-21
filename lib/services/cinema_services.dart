import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/entities/cinema.dart';
import 'package:movie_app/entities/order.dart';

class CinemaServices {
  final Dio _dio = Dio(BaseOptions(connectTimeout: 5000));
  Future<ApiResult<List<Cinema>>> getCinemaList() async {
    try {
      Response result =
          await _dio.get("${dotenv.env['local_api_url']}/cinemas");
      List<Cinema> cinemaList =
          (result.data['data'] as List).map((e) => Cinema.fromJson(e)).toList();

      return ApiResult.success(cinemaList);
    } on DioError catch (e) {
      return ApiResult.failed(e.response.toString());
    }
  }

  Future<List<String>?> getReservedList(
      {required String date,
      required int studioId,
      required int movieId}) async {
    var data = {
      "studio": {"id": studioId, "date": date, "movie_id": movieId}
    };
    try {
      Response result =
          await _dio.post("${dotenv.env['local_api_url']}/studio/reserved_seat",
              options: Options(headers: {
                "Content-Type": "application/json",
              }),
              data: jsonEncode(data));
      List<String> cinemaList = (result.data['data']['reserved_seats'] as List)
          .map((e) => e['seat'].toString())
          .toList();
      return cinemaList;
    } on DioError catch (e) {
      return null;
    }
  }
}
