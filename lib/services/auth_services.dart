import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/api_result.dart';

class AuthServices {
  final Dio _dio = Dio(BaseOptions(connectTimeout: 5000));
  Future<ApiResult<String>> login(
      {required String phone, required String password}) async {
    var data = {
      "user": {"phone_number": phone, "password": password}
    };
    try {
      Response result =
          await _dio.post("${dotenv.env['local_auth_url']}/auth/login",
              options: Options(headers: {
                "Content-Type": "application/json",
              }),
              data: jsonEncode(data));

      return ApiResult.success(result.data['data']['token']);
      // return result.data;
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }
}
