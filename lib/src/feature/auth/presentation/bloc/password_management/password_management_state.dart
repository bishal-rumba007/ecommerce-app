part of 'password_management_bloc.dart';

@freezed
class PasswordManagementState with _$PasswordManagementState {
  const factory PasswordManagementState.initial() =
      PasswordManagementInitialState;
  const factory PasswordManagementState.loading() =
      PasswordManagementLoadingState;
  const factory PasswordManagementState.forgotPasswordSuccess() =
      ForgotPasswordSuccessState;
  const factory PasswordManagementState.forgotPasswordFailure(String error) =
      ForgotPasswordFailureState;
  const factory PasswordManagementState.otpVerificationSuccess(String message) =
      OtpVerificationSuccessState;
  const factory PasswordManagementState.otpVerificationFailure(String error) =
      OtpVerificationFailureState;
  const factory PasswordManagementState.otpResendSuccess() =
      OtpResendSuccessState;
  const factory PasswordManagementState.otpResendFailure(String error) =
      OtpResendFailureState;
  const factory PasswordManagementState.passwordResetSuccess() =
      PasswordResetSuccessState;
  const factory PasswordManagementState.passwordResetFailure(String error) =
      PasswordResetFailureState;
  const factory PasswordManagementState.passwordChangeSuccess() =
      PasswordChangeSuccessState;
  const factory PasswordManagementState.passwordChangeFailure(String error) =
      PasswordChangeFailureState;
}
