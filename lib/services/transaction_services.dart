import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/transaction.dart';

import '../entities/api_result.dart';

class TransactionServices {
  final Dio _dio = Dio(BaseOptions(connectTimeout: 5000));
  Future<ApiResult<List<Transaction>>> getTransactionList(
      {required String token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['local_api_url']}/transactions/show",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        }),
      );
      List<Transaction> transactions =
          (result.data['data']['transactions'] as List)
              .map((e) => Transaction.fromJson(e))
              .toList();

      return ApiResult.success(transactions);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }
}
