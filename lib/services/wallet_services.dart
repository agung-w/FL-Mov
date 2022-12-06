import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/api_result.dart';

class WalletServices {
  final Dio _dio = Dio();
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
      return ApiResult.failed(e.response.toString());
    }
  }
}
