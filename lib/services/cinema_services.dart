import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/entities/cinema.dart';

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
}
