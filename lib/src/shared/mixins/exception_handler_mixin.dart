import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/domain/models/response.dart'
    as response;
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

mixin ExceptionHandlerMixin on NetworkService {
  Future<Either<AppException, response.Response>>
      handleException<T extends Object>(
          Future<Response<dynamic>> Function() handler,
          {String endpoint = ''}) async {
    try {
      final res = await handler();
      return Right(
        response.Response(
          statusCode: res.statusCode ?? 200,
          data: res.data,
          statusMessage: res.statusMessage,
        ),
      );
    } catch (e) {
      String message = '';
      String identifier = '';
      int statusCode = 0;
      log(e.runtimeType.toString());
      switch (e.runtimeType) {
        case const (SocketException):
          e as SocketException;
          message = '"Something wrong with your connection, Please try again after a moment."';
          statusCode = 0;
          identifier = 'Socket Exception ${e.message}\n at  $endpoint';
          break;

        case const (DioException):
          e as DioException;
          message = getDioErrorMessage(e);
          statusCode = e.response?.statusCode ?? 1;
          identifier = 'DioException ${e.message} \nat  $endpoint';
          break;

        default:
          message = 'Unknown error occurred';
          statusCode = 2;
          identifier = 'Unknown error ${e.toString()}\n at $endpoint';
      }
      return Left(
        AppException(
          message: message,
          statusCode: statusCode,
          identifier: identifier,
        ),
      );
    }
  }

  String getDioErrorMessage(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return 'Connection timeout, Please check your network and try again';
      case DioExceptionType.sendTimeout:
        return 'The request took too long to send. Please check your network and try again.';
      case DioExceptionType.receiveTimeout:
        return 'The server took too long to respond. Please try again later.';
      case DioExceptionType.cancel:
        return 'The request was cancelled. Please try again if this was a mistake.';
      case DioExceptionType.connectionError:
        return 'Unable to connect to the internet. Please check your connection and try again.';
      case DioExceptionType.badResponse:
        if (e.response?.statusCode == 404) {
          return e.response?.data?['message'] ?? 'Resource not found';
        } else if(e.response?.statusCode == 400) {
          return e.response?.data?['message'] ?? 'Bad request';
        } 
        return 'The server responded with an error. Please try again later.';
      case DioExceptionType.badCertificate:
        return 'The server certificate is invalid. Please try again later.';
      default:
        return e.response?.data?['message'] ?? 'Internal Error occurred';
    }
  }
}
