import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/services/user_cache_service/domain/repositories/user_repository.dart';
import 'package:ecommerce_app/src/shared/data/local/token_storage_service.dart';
import 'package:ecommerce_app/src/core/routes/app_route.dart';
import 'package:ecommerce_app/src/shared/presentation/widgets/session_expired_dialog.dart';

/// A custom interceptor that will be used to intercept all requests
/// [dio] is the instance of Dio that will be used to make requests
/// [tokenStorageService] is the instance of TokenStorageService that will be used to store and retrieve tokens
/// [userRepository] is the instance of UserRepository that will be used to delete user data
class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor(this.dio, this.tokenStorageService, this.userRepository);

  final Dio dio;
  final TokenStorageService tokenStorageService;
  final UserRepository userRepository;

  /// isRefreshing flag is used to control whether a token refresh is already in progress.
  ///
  /// If it's in progress, subsequent requests will skip the refresh attempt
  /// until the first one completes.
  bool isRefreshing = false;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    /// get the access token and refresh token from the storage
    final String? accessToken = await tokenStorageService.getAccessToken();
    final String? refreshToken = await tokenStorageService.getRefreshToken();

    /// if the access token is null, it means the user is not logged in
    /// or the session has expired and the user needs to login again
    /// so we will reject the request and show the login screen
    if (accessToken == null || refreshToken == null) {
      // create custom dio error
      final error = DioException(
        error: 'Session expired please login',
        requestOptions: options,
        response: Response<dynamic>(
          statusMessage: 'Session expired please login',
          statusCode: 401,
          requestOptions: options,
        ),
      );
      await _performLogout(dio);
      return handler.reject(error);
    } else {
      options.headers['Authorization'] = 'Bearer $accessToken';
      log('access token: $accessToken');
      return handler.next(options);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    log(err.toString());
    try {
      /// if the status code is 401, it means the access token has expired
      /// and we need to refresh the token
      if (err.response?.statusCode == 401) {
        /// if the token is already being refreshed, we will skip the refresh attempt
        /// until the first one completes.
        /// this is to avoid multiple requests trying to refresh the token at the same time
        /// which can cause issues
        if (!isRefreshing) {
          /// set isRefreshing to true to indicate that the token is being refreshed
          isRefreshing = true;

          /// get the request options from the error object
          /// this will be used to make the request again after refreshing the token
          final requestOptions = err.requestOptions;

          /// refresh the token
          final accessToken = await _refreshToken();
          
          /// if the refresh token is expired, we will perform logout
          /// and show the login screen
          if (accessToken == null) {
            //if still access token is null means
            await _performLogout(dio);
            return handler.reject(err);
          } else {
            /// if the refresh is successful, we will update the access token
            /// [opts] is the options that will be used to make the request again
            final opts = Options(
              method: requestOptions.method,
              extra: err.requestOptions.extra,
            );

            /// store the data of the request to be used to make the request again
            var retryRequestData = err.requestOptions.data;

            /// if the request data is FormData, we need to clone the files
            /// because the files are consumed when the request is made and we cannot
            /// use them again because FormData cannot be reused
            if (err.requestOptions.data is FormData) {
              FormData formData = FormData();

              for (MapEntry mapFile in err.requestOptions.data.files) {
                formData.files.add(MapEntry(
                  mapFile.key,
                  mapFile.value.clone(),
                ));
              }
              /// set the retryRequestData to the cloned formData
              retryRequestData = formData; 
            }

            /// make the request again with the new access token
            dio.options.headers['Authorization'] = 'Bearer $accessToken';
            final response = await dio.request<dynamic>(
              err.requestOptions.path,
              options: opts,
              cancelToken: err.requestOptions.cancelToken,
              onReceiveProgress: err.requestOptions.onReceiveProgress,
              data: retryRequestData,
              queryParameters: err.requestOptions.queryParameters,
            );

            /// if the request is successful, we will resolve the response
            /// and set isRefreshing to false
            /// else we will reject the error
            if (response.statusCode != 401) {
              isRefreshing = false;
              return handler.resolve(response);
            } else {
              return handler.reject(err);
            }
          }
        } else {
          return handler.next(err);
        }
      }

      /// handling delete [204] status with no content since
      /// dio is not able identify this status
      if (err.type == DioExceptionType.unknown &&
          err.requestOptions.method == 'DELETE') {
        return handler.resolve(
          Response(
            requestOptions: err.requestOptions,
            statusCode: 200,
            data: {"message": "User deleted successfully"},
          ),
        );
      }
      return handler.next(err);
    } catch (e) {
      return handler.reject(
        err.copyWith(
          error: e,
          stackTrace: StackTrace.current,
        ),
      );
    }
  }

  // should create new dioRefresh instance
  // because the request interceptor is being locked
  final Dio requestDio = Dio();

  /// Refresh the access token using the refresh token and save the new access token
  /// [dio] is the instance of Dio that will be used to make requests
  /// returns the new access token
  /// if the refresh token is expired, it will return null
  Future<String?> _refreshToken() async {
    final refreshToken = await tokenStorageService.getRefreshToken();
    try {
      final dioRefresh = Dio(dio.options);
      final response = await dioRefresh.post(
        AppConfig.refresh,
        data: {
          'refresh': refreshToken,
        },
      );

      dioRefresh.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
      ));

      if (response.statusCode == 200) {
        final newAccessToken = response.data['access'];
        await tokenStorageService.saveAccessToken(newAccessToken);
        return newAccessToken;
      } else if (response.statusCode == 401) {
        return null;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  /// Perform logout by deleting tokens and user data
  /// and navigate to login screen
  /// [dio] is the instance of Dio that will be used to make requests
  Future<void> _performLogout(Dio dio) async {
    await tokenStorageService.deleteTokens();
    await userRepository.deleteUser();
    GoogleSignIn().signOut();
    dio.interceptors.clear();
    router.go('/login');
    showSessionExpiredDialog(
        router.routerDelegate.navigatorKey.currentContext!);
  }
}
