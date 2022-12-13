import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/api_result.dart';

class OrderServices {
  final Dio _dio = Dio(BaseOptions(connectTimeout: 5000));

  Future<ApiResult<String>> orderTicket(
      {required int movieId,
      required int cinemaID,
      required int studioId,
      required int quantity,
      required double subTotal,
      required String schedule,
      required List<String> seats}) async {
    var data = {
      "order": {
        "movie_id": movieId,
        "cinema_id": cinemaID,
        "studio_id": studioId,
        "quantity": quantity,
        "sub_total": subTotal,
        "schedule": schedule
      },
      "seats": seats
    };
    try {
      Response result =
          await _dio.put("${dotenv.env['local_api_url']}/user/createpassword",
              options: Options(headers: {
                "Content-Type": "application/json",
              }),
              data: jsonEncode(data));

      return ApiResult.success(result.data['data']['message']);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }
}
