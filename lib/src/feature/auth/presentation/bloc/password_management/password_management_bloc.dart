import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/forgot_password_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/otp_verify_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/resend_otp_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/reset_password_usecase.dart';

part 'password_management_bloc.freezed.dart';
part 'password_management_event.dart';
part 'password_management_state.dart';

class PasswordManagementBloc
    extends Bloc<PasswordManagementEvent, PasswordManagementState> {
  final ForgotPasswordUsecase forgotPasswordUseCase;
  final OtpVerifyUsecase otpVerifyUsecase;
  final ResetPasswordUsecase resetPasswordUsecase;
  final ResendOtpUsecase resendOtpUsecase;

  PasswordManagementBloc({
    required this.forgotPasswordUseCase,
    required this.otpVerifyUsecase,
    required this.resetPasswordUsecase,
    required this.resendOtpUsecase,
  }) : super(const PasswordManagementState.initial()) {
    on<ForgotPassword>(_onForgotPassword);
    on<VerifyOtp>(_onVerifyOtp);
    on<ResetPassword>(_onResetPassword);
    on<ResendOtp>(_onResendOtp);
  }

  Future<void> _onForgotPassword(
    ForgotPassword event,
    Emitter<PasswordManagementState> emit,
  ) async {
    emit(const PasswordManagementState.loading());
    final result = await forgotPasswordUseCase.call(event.email);
    result.fold(
      (exception) {
        emit(PasswordManagementState.forgotPasswordFailure(exception.message));
      },
      (message) {
        emit(const PasswordManagementState.forgotPasswordSuccess());
      },
    );
  }

  Future<void> _onVerifyOtp(
    VerifyOtp event,
    Emitter<PasswordManagementState> emit,
  ) async {
    emit(const PasswordManagementState.loading());
    final result = await otpVerifyUsecase.call(event.otpCode);
    result.fold((exception) {
      emit(PasswordManagementState.otpVerificationFailure(exception.message));
    }, (message) {
      emit(OtpVerificationSuccessState(message));
    });
  }

  Future<void> _onResetPassword(
    ResetPassword event,
    Emitter<PasswordManagementState> emit,
  ) async {
    emit(const PasswordManagementState.loading());
    final result = await resetPasswordUsecase.call(ResetPasswordParams(
      userId: event.userId,
      newPassword: event.newPassword,
      confirmPassword: event.newPassword,
    ));
    result.fold(
      (exception) {
        emit(PasswordManagementState.passwordResetFailure(exception.message));
      },
      (success) {
        emit(const PasswordManagementState.passwordResetSuccess());
      },
    );
  }

  Future<void> _onResendOtp(
    ResendOtp event,
    Emitter<PasswordManagementState> emit,
  ) async {
    emit(const PasswordManagementState.loading());
    final result = await resendOtpUsecase.call(event.email);
    result.fold(
      (exception) {
        emit(PasswordManagementState.otpResendFailure(exception.message));
      },
      (message) {
        emit(const PasswordManagementState.otpResendSuccess());
      },
    );
  }
}
