import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/api_result.dart';

class WalletServices {
  final Dio _dio = Dio(BaseOptions(connectTimeout: 5000));
  Future<ApiResult<String>> getBalance({required String token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['local_api_url']}/wallet/user_balance",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        }),
      );
      // log(result.data);
      return ApiResult.success(result.data['data']['wallet']['balance']);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message']
          : "Connection timeout");
    }
  }

  Future<ApiResult<String>> activateWallet({required String token}) async {
    try {
      Response result = await _dio.post(
        "${dotenv.env['local_api_url']}/wallet/activate",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        }),
      );
      // log(result.data);
      return ApiResult.success(result.data['data']['wallet']['balance']);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message']
          : "Connection timeout");
    }
  }

  Future<ApiResult<String>> topUp(
      {required String token,
      required String amount,
      required String method}) async {
    var data = {
      "wallet": {"amount": amount, "method": method}
    };
    try {
      Response result =
          await _dio.put("${dotenv.env['local_api_url']}/wallet/top_up",
              options: Options(headers: {
                "Content-Type": "application/json",
                "Authorization": "Bearer $token",
              }),
              data: jsonEncode(data));
      // log(result.data);
      return ApiResult.success(result.data['data']['wallet']['balance']);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message']
          : "Connection timeout");
    }
  }
}
