part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(String message) = _Authenticated;
  const factory AuthState.failure(AppException exception) = _Failure;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.registered(String message) = _Registered;
  const factory AuthState.sucess(String message) = _Success;
  const factory AuthState.otpVerifyFailed(String message) = _OtpVerifyFailed;
  const factory AuthState.otpVerified(String message) = _OtpVerified;
  const factory AuthState.otpResendFailure(String message) = _OtpResendFailed;
  const factory AuthState.otpResendSuccess(String message) = _OtpResendSuccess;
  const factory AuthState.logout() = _Logout;
}
