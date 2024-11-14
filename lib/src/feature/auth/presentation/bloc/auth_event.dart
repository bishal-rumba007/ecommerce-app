part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginRequested({
    required String email,
    required String password,
  }) = LoginRequested;
  const factory AuthEvent.registerRequested({
    required String email,
    required String phone,
    required String password,
    required String password2,
    required File image,
    required String name,
    required String gender,
  }) = RegisterRequested;
  const factory AuthEvent.logoutRequested() = LogoutRequested;
  const factory AuthEvent.checkAuthStatus() = CheckAuthStatus;
  const factory AuthEvent.verifyOTP({
    required String otp,
  }) = RequestVerifyOTP;
  const factory AuthEvent.resendOTP({
    required String email,
  }) = ResendOTP;
  const factory AuthEvent.googleSignIn({
    required String idToken,
  }) = GoogleSignInRequested;
}
