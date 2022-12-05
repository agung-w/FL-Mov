import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/entities/user.dart';
import 'package:movie_app/helper/constants.dart';

class AuthServices {
  final Dio _dio = Dio();
  Future<String?> login(phone, password) async {
    var data = {
      "user": {"phone_number": phone, "password": password}
    };
    try {
      Response result =
          await _dio.post("${dotenv.env['ticket_api_url']}/auth/login",
              options: Options(headers: {
                HttpHeaders.contentTypeHeader: "application/json",
              }),
              data: jsonEncode(data));
      log(result.toString());
      return result.data["token"];
    } on DioError catch (e) {
      log(e.response.toString());
      return null;
    }
  }
}
