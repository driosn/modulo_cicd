import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_bloc.dart';

final class NetworkWrapper {
  NetworkWrapper({
    required this.dio,
    required this.baseUrl,
  });

  final Dio dio;
  final String baseUrl;

  void init(String languageHeader) {
    dio.interceptors.add(HttpInterceptors());
    setBaseUrl(baseUrl);
    setHeaders({
      'Content-Type': 'application/json',
    });

    updateLanguageHeader(languageHeader);
  }

  void setBaseUrl(String baseUrl) {
    dio.options.baseUrl = baseUrl;
  }

  void updateLanguageHeader(String locale) {
    dio.options.headers.update('Accept-Language', (_) => locale, ifAbsent: () => locale);
  }

  void setHeaders(Map<String, dynamic> headers) {
    dio.options.headers = headers;
  }

  void setToken(String token) {
    dio.options.headers.putIfAbsent(
      'Authorization',
      () => 'Bearer $token',
    );
  }

  void cleanToken() => dio.options.headers.remove('Authorization');
}

class HttpInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');\
    // if(options.path.contains('/Payments/PropertyPaymentSettings?propertyId')) {
    //   debugPrint('Removing Authorization header');
    //   options.headers.remove('Authorization');
    // }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // debugPrint('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    debugPrint('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');

    if (err.response?.isUnauthorized == true) {
      try {
        // Make sure we clear the users session
        var signInBloc = locator<SignInBloc>();
        signInBloc.add(const SignInEvent.sessionExpired());

        // Reject the request with a specific error. Test this with payment errors route. Do we still handle the response? What happens?
        return handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: 'The user session has expired',
          ),
        );
      } catch (e) {
        debugPrint('ERROR: $e');
        // TODO What do we do if we can't sign out?.. Just continue?
      }
    }

    // If we don't reject, then call onError to send the request to the next handler.
    super.onError(err, handler);
  }
}
