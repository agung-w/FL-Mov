import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/entities/user.dart';

class UserServices {
  final Dio _dio = Dio();
  Future<ApiResult<User>> getUserDetail({required String token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['local_api_url']}/user_detail",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        }),
      );
      User user = User.fromJson(result.data['data']);
      // log(result.data);
      return ApiResult.success(user);
    } on DioError catch (e) {
      return ApiResult.failed(e.response.toString());
    }
  }
}
