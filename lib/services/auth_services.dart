import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:movie_app/helper/constants.dart';

class AuthServices {
  Dio dio = Dio();
  // Future<GoogleSignInAccount?> googleSignIn() async {
  //   try {
  //     GoogleSignInAccount? account = await GoogleSignIn().signIn();
  //     return account;
  //   } catch (e) {
  //     log(e.toString());
  //     return null;
  //   }
  // }
  final FlutterAppAuth _appAuth = const FlutterAppAuth();
  static final AuthServices instance = AuthServices._();
  factory AuthServices() => instance;
  AuthServices._();
  Future<bool> login() async {
    final AuthorizationTokenRequest authorizationTokenRequest;

    try {
      authorizationTokenRequest = AuthorizationTokenRequest(
        clientID(),
        redirectUrl(),
        issuer: GOOGLE_ISSUER,
        scopes: ['email', 'profile'],
      );
      // Requesting the auth token and waiting for the response
      final AuthorizationTokenResponse? result =
          await _appAuth.authorizeAndExchangeCode(
        authorizationTokenRequest,
      );
      print(result);

      // Taking the obtained result and processing it
      return await _handleAuthResult(result);
    } on PlatformException {
      print("User has cancelled or no internet!");
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> _handleAuthResult(result) async {
    final bool isValidResult =
        result != null && result.accessToken != null && result.idToken != null;
    if (isValidResult) {
      // Storing refresh token to renew login on app restart
      if (result.refreshToken != null) {
        log(result.refreshToken);
      }

      final String googleAccessToken = result.accessToken;

      // Send request to backend with access token
      // final url = Uri.https(
      //   'api.your-server.com',
      //   '/v1/social-authentication',
      //   {
      //     'access_token': googleAccessToken,
      //   },
      // );
      // final response = await http.get(url);
      // final backendToken = response.token

      // Let's assume it has been successful and a valid token has been returned
      const String backendToken = 'TOKEN';
      if (backendToken != null) {
        // await _secureStorage.write(
        //   key: BACKEND_TOKEN_KEY,
        //   value: backendToken,
        // );
        log(backendToken);
      }
      return true;
    } else {
      return false;
    }
  }
}
