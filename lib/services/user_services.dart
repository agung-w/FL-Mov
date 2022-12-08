import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/entities/user.dart';

class UserServices {
  final Dio _dio = Dio(BaseOptions(connectTimeout: 5000));
  Future<ApiResult<User>> getUserDetail({required String token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['local_api_url']}/user/detail",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        }),
      );
      User user = User.fromJson(result.data['data']);
      // log(result.data);
      return ApiResult.success(user);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<String>> phoneRegistration(
      {required String phone, required String name}) async {
    var data = {
      "user": {"phone_number": phone, "name": name}
    };
    try {
      Response result =
          await _dio.post("${dotenv.env['local_api_url']}/user/register",
              options: Options(headers: {
                "Content-Type": "application/json",
              }),
              data: jsonEncode(data));

      return ApiResult.success(result.data['data']['message']);
      // return result.data;
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<String>> verifyPhoneRegistration(
      {required String phone, required String code}) async {
    var data = {
      "user": {"phone_number": phone, "code": code}
    };
    try {
      Response result =
          await _dio.post("${dotenv.env['local_api_url']}/user/verifyphone",
              options: Options(headers: {
                "Content-Type": "application/json",
              }),
              data: jsonEncode(data));

      return ApiResult.success(result.data['data']['message']);
      // return result.data;
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<String>> createPassword(
      {required String phone, required String password}) async {
    var data = {
      "user": {"phone_number": phone, "password": password}
    };
    try {
      Response result =
          await _dio.put("${dotenv.env['local_api_url']}/user/createpassword",
              options: Options(headers: {
                "Content-Type": "application/json",
              }),
              data: jsonEncode(data));

      return ApiResult.success(result.data['data']['token']);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }
}
