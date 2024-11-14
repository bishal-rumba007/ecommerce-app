import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/domain/models/response.dart'
    as response;
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';
import 'package:ecommerce_app/src/shared/globals.dart';
import 'package:ecommerce_app/src/shared/mixins/exception_handler_mixin.dart';

class DioNetworkService extends NetworkService with ExceptionHandlerMixin {
  final Dio dio;

  DioNetworkService(this.dio) {
    if (!kTestMode) {
      dio.options = dioBaseOptions;
      if (kDebugMode) {
        print(dio.options.baseUrl);
        dio.interceptors
            .add(LogInterceptor(requestBody: true, responseBody: true));
      }
    }
  }

  BaseOptions get dioBaseOptions => BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
        connectTimeout: const Duration(milliseconds: 16000),
        receiveTimeout: const Duration(milliseconds: 16000),
      );

  @override
  String get baseUrl => AppConfig.baseUrl;

  @override
  Map<String, Object> get headers => {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };

  @override
  Map<String, dynamic>? updateHeader(Map<String, dynamic> data) {
    final header = {...data, ...headers};
    if (!kTestMode) {
      dio.options.headers = header;
    }
    return header;
  }

  @override
  Future<Either<AppException, response.Response>> post(String endpoint,
      {Map<String, dynamic>? data, Object? formData}) {
    final result = handleException(
      () => dio.post(
        endpoint,
        data: data,
      ),
      endpoint: endpoint,
    );
    return result;
  }

  @override
  Future<Either<AppException, response.Response>> get(String endpoint,
      {Map<String, dynamic>? queryParameters}) {
    final res = handleException(
      () => dio.get(
        endpoint,
        queryParameters: queryParameters,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<AppException, response.Response>> postMultipart(String endpoint,
      {Object? data, Map<String, dynamic>? additionalHeaders}) {
    final cookieJar = CookieJar();
    dio.interceptors.add(CookieManager(cookieJar));
    final result = handleException(
      () => dio.post(
        endpoint,
        data: data,
        options: Options(
          headers: {
            ...additionalHeaders ?? {},
          },
        ),
      ),
      endpoint: endpoint,
    );
    return result;
  }

  @override
  Future<Either<AppException, response.Response>> delete(String endpoint,
      {Map<String, dynamic>? data}) {
    final res = handleException(
      () => dio.delete(
        endpoint,
        queryParameters: data,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<AppException, response.Response>> put(String endpoint,
      {Map<String, dynamic>? data}) {
    final res = handleException(
      () => dio.put(
        endpoint,
        queryParameters: data,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<AppException, response.Response>> putMultipart(String endpoint,
      {Object? data, Map<String, dynamic>? additionalHeaders}) {
    final cookieJar = CookieJar();
    dio.interceptors.add(CookieManager(cookieJar));
    final result = handleException(
      () => dio.put(
        endpoint,
        data: data,
        options: Options(
          headers: {
            ...additionalHeaders ?? {},
          },
        ),
      ),
      endpoint: endpoint,
    );
    return result;
  }
}
