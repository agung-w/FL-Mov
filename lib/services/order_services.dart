import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/entities/order.dart';
import 'package:movie_app/entities/transaction.dart';

class OrderServices {
  final Dio _dio = Dio(BaseOptions(connectTimeout: 5000));

  Future<ApiResult<Order>> orderTicket(
      {required int movieId,
      required int studioId,
      required int quantity,
      required String schedule,
      required List<String> seats,
      required String token}) async {
    var data = {
      "order": {
        "movie_id": movieId,
        "studio_id": studioId,
        "quantity": quantity,
        "schedule": schedule
      },
      "seats": seats
    };
    try {
      Response result =
          await _dio.post("${dotenv.env['local_api_url']}/order/ticket",
              options: Options(headers: {
                "Content-Type": "application/json",
                "Authorization": "Bearer $token",
              }),
              data: jsonEncode(data));
      Order order = Order.fromJson(result.data['data']['order']);
      return ApiResult.success(order);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<String>> cancelOrder(
      {required int orderId, required String token}) async {
    var data = {"order_id": orderId};
    try {
      Response result =
          await _dio.post("${dotenv.env['local_api_url']}/order/cancel",
              options: Options(headers: {
                "Content-Type": "application/json",
                "Authorization": "Bearer $token",
              }),
              data: jsonEncode(data));

      return ApiResult.success(result.data['data']['message']);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<String>> payOrderTicket(
      {required int orderId,
      required String token,
      required PaymentMethod paymentMethod}) async {
    var data = {
      "order": {
        "order_id": orderId,
        "payment_method": paymentMethod.name.toUpperCase(),
        "method_fee": paymentMethod.fee
      }
    };
    try {
      Response result =
          await _dio.post("${dotenv.env['local_api_url']}/pay/ticket",
              options: Options(headers: {
                "Content-Type": "application/json",
                "Authorization": "Bearer $token",
              }),
              data: jsonEncode(data));

      return ApiResult.success(result.data['data']['message']);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<List<Order>>> getAllTicket({required String token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['local_api_url']}/ticket/all",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        }),
      );
      List<Order> orderList = (result.data['data']['tickets'] as List)
          .map((e) => Order.fromJson(e))
          .toList();
      return ApiResult.success(orderList);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<List<Order>>> getActiveTicket(
      {required String token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['local_api_url']}/ticket/active",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        }),
      );
      List<Order> orderList = (result.data['data']['tickets'] as List)
          .map((e) => Order.fromJson(e))
          .toList();
      return ApiResult.success(orderList);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['error']['message'].toString()
          : "Connection timeout");
    }
  }
}
