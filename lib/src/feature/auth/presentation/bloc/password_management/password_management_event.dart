part of 'password_management_bloc.dart';

@freezed
class PasswordManagementEvent with _$PasswordManagementEvent {
  const factory PasswordManagementEvent.forgotPassword({
    required String email,
  }) = ForgotPassword;

  const factory PasswordManagementEvent.resendOtp({
    required String email,
  }) = ResendOtp;

  const factory PasswordManagementEvent.verifyOtp({
    required String otpCode,
  }) = VerifyOtp;

  const factory PasswordManagementEvent.resetPassword({
    required int userId,
    required String newPassword,
    required String confirmPassword,
  }) = ResetPassword;

  const factory PasswordManagementEvent.changePassword({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) = ChangePassword;
}
