import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/google_sign_in_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/login_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/logout_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/otp_resend_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/register_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:ecommerce_app/src/services/user_cache_service/domain/repositories/user_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_state.dart';
part 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUsecase loginUsecase;
  final RegisterUsecase registerUsecase;
  final UserRepository userRepository;
  final VerifyOtpUsecase verifyOtpUsecase;
  final OtpResendUsecase otpResendUsecase;
  final LogoutUsecase logoutUsecase;
  final GoogleSignInUsecase googleSignInUsecase;

  AuthBloc({
    required this.loginUsecase,
    required this.registerUsecase,
    required this.userRepository,
    required this.verifyOtpUsecase,
    required this.otpResendUsecase,
    required this.logoutUsecase,
    required this.googleSignInUsecase,
  }) : super(const AuthState.initial()) {
    on<LoginRequested>(_onLoginRequested);
    on<RegisterRequested>(_onRegisterRequested);
    on<RequestVerifyOTP>(_onVerifyOtp);
    on<LogoutRequested>(_onLogoutRequested);
    on<ResendOTP>(_onOtpResend);
    on<GoogleSignInRequested>(googleSignIn);
  }

  Future<void> _onLoginRequested(
    LoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await loginUsecase(
        LoginParams(email: event.email, password: event.password));
    result.fold(
      (exception) {
        emit(AuthState.failure(exception));
      },
      (user) async {
        emit(const AuthState.authenticated("Logged in Successfully!"));
      },
    );
  }

  Future<void> _onRegisterRequested(
    RegisterRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await registerUsecase.call(RegisterParams(
      email: event.email,
      phoneNo: event.phone,
      password: event.password,
      password2: event.password2,
      image: event.image,
      name: event.name,
      gender: event.gender,
    ));
    result.fold(
      (exception) {
        emit(AuthState.failure(exception));
      },
      (message) {
        emit(AuthState.registered(message));
      },
    );
  }

  Future<void> _onVerifyOtp(
    RequestVerifyOTP event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await verifyOtpUsecase.call(event.otp);
    result.fold(
      (exception) {
        emit(AuthState.otpVerifyFailed(exception.message));
      },
      (message) {
        emit(AuthState.otpVerified(message));
      },
    );
  }

  Future<void> _onOtpResend(
    ResendOTP event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await otpResendUsecase.call(event.email);
    result.fold(
      (exception) {
        emit(AuthState.otpResendFailure(exception.message));
      },
      (message) {
        emit(AuthState.otpResendSuccess(message));
      },
    );
  }

  Future<void> _onLogoutRequested(
    LogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await logoutUsecase.call();
    result.fold(
      (exception) {
        emit(AuthState.failure(exception));
      },
      (message) async {
        emit(const AuthState.logout());
      },
    );
  }

  Future<void> googleSignIn(
    GoogleSignInRequested event,
    Emitter<AuthState> emit,
  ) async {
    final result = await googleSignInUsecase.call(event.idToken);
    result.fold(
      (exception) {
        emit(AuthState.failure(exception));
      },
      (message) {
        emit(AuthState.authenticated(message));
      },
    );
  }
}
