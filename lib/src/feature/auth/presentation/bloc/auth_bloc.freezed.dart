// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) authenticated,
    required TResult Function(AppException exception) failure,
    required TResult Function() unauthenticated,
    required TResult Function(String message) registered,
    required TResult Function(String message) sucess,
    required TResult Function(String message) otpVerifyFailed,
    required TResult Function(String message) otpVerified,
    required TResult Function(String message) otpResendFailure,
    required TResult Function(String message) otpResendSuccess,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? authenticated,
    TResult? Function(AppException exception)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? registered,
    TResult? Function(String message)? sucess,
    TResult? Function(String message)? otpVerifyFailed,
    TResult? Function(String message)? otpVerified,
    TResult? Function(String message)? otpResendFailure,
    TResult? Function(String message)? otpResendSuccess,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? authenticated,
    TResult Function(AppException exception)? failure,
    TResult Function()? unauthenticated,
    TResult Function(String message)? registered,
    TResult Function(String message)? sucess,
    TResult Function(String message)? otpVerifyFailed,
    TResult Function(String message)? otpVerified,
    TResult Function(String message)? otpResendFailure,
    TResult Function(String message)? otpResendSuccess,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Success value) sucess,
    required TResult Function(_OtpVerifyFailed value) otpVerifyFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_OtpResendFailed value) otpResendFailure,
    required TResult Function(_OtpResendSuccess value) otpResendSuccess,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Success value)? sucess,
    TResult? Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_OtpResendFailed value)? otpResendFailure,
    TResult? Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_Success value)? sucess,
    TResult Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_OtpResendFailed value)? otpResendFailure,
    TResult Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) authenticated,
    required TResult Function(AppException exception) failure,
    required TResult Function() unauthenticated,
    required TResult Function(String message) registered,
    required TResult Function(String message) sucess,
    required TResult Function(String message) otpVerifyFailed,
    required TResult Function(String message) otpVerified,
    required TResult Function(String message) otpResendFailure,
    required TResult Function(String message) otpResendSuccess,
    required TResult Function() logout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? authenticated,
    TResult? Function(AppException exception)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? registered,
    TResult? Function(String message)? sucess,
    TResult? Function(String message)? otpVerifyFailed,
    TResult? Function(String message)? otpVerified,
    TResult? Function(String message)? otpResendFailure,
    TResult? Function(String message)? otpResendSuccess,
    TResult? Function()? logout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? authenticated,
    TResult Function(AppException exception)? failure,
    TResult Function()? unauthenticated,
    TResult Function(String message)? registered,
    TResult Function(String message)? sucess,
    TResult Function(String message)? otpVerifyFailed,
    TResult Function(String message)? otpVerified,
    TResult Function(String message)? otpResendFailure,
    TResult Function(String message)? otpResendSuccess,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Success value) sucess,
    required TResult Function(_OtpVerifyFailed value) otpVerifyFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_OtpResendFailed value) otpResendFailure,
    required TResult Function(_OtpResendSuccess value) otpResendSuccess,
    required TResult Function(_Logout value) logout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Success value)? sucess,
    TResult? Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_OtpResendFailed value)? otpResendFailure,
    TResult? Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult? Function(_Logout value)? logout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_Success value)? sucess,
    TResult Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_OtpResendFailed value)? otpResendFailure,
    TResult Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) authenticated,
    required TResult Function(AppException exception) failure,
    required TResult Function() unauthenticated,
    required TResult Function(String message) registered,
    required TResult Function(String message) sucess,
    required TResult Function(String message) otpVerifyFailed,
    required TResult Function(String message) otpVerified,
    required TResult Function(String message) otpResendFailure,
    required TResult Function(String message) otpResendSuccess,
    required TResult Function() logout,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? authenticated,
    TResult? Function(AppException exception)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? registered,
    TResult? Function(String message)? sucess,
    TResult? Function(String message)? otpVerifyFailed,
    TResult? Function(String message)? otpVerified,
    TResult? Function(String message)? otpResendFailure,
    TResult? Function(String message)? otpResendSuccess,
    TResult? Function()? logout,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? authenticated,
    TResult Function(AppException exception)? failure,
    TResult Function()? unauthenticated,
    TResult Function(String message)? registered,
    TResult Function(String message)? sucess,
    TResult Function(String message)? otpVerifyFailed,
    TResult Function(String message)? otpVerified,
    TResult Function(String message)? otpResendFailure,
    TResult Function(String message)? otpResendSuccess,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Success value) sucess,
    required TResult Function(_OtpVerifyFailed value) otpVerifyFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_OtpResendFailed value) otpResendFailure,
    required TResult Function(_OtpResendSuccess value) otpResendSuccess,
    required TResult Function(_Logout value) logout,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Success value)? sucess,
    TResult? Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_OtpResendFailed value)? otpResendFailure,
    TResult? Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult? Function(_Logout value)? logout,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_Success value)? sucess,
    TResult Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_OtpResendFailed value)? otpResendFailure,
    TResult Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthenticatedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.authenticated(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) authenticated,
    required TResult Function(AppException exception) failure,
    required TResult Function() unauthenticated,
    required TResult Function(String message) registered,
    required TResult Function(String message) sucess,
    required TResult Function(String message) otpVerifyFailed,
    required TResult Function(String message) otpVerified,
    required TResult Function(String message) otpResendFailure,
    required TResult Function(String message) otpResendSuccess,
    required TResult Function() logout,
  }) {
    return authenticated(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? authenticated,
    TResult? Function(AppException exception)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? registered,
    TResult? Function(String message)? sucess,
    TResult? Function(String message)? otpVerifyFailed,
    TResult? Function(String message)? otpVerified,
    TResult? Function(String message)? otpResendFailure,
    TResult? Function(String message)? otpResendSuccess,
    TResult? Function()? logout,
  }) {
    return authenticated?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? authenticated,
    TResult Function(AppException exception)? failure,
    TResult Function()? unauthenticated,
    TResult Function(String message)? registered,
    TResult Function(String message)? sucess,
    TResult Function(String message)? otpVerifyFailed,
    TResult Function(String message)? otpVerified,
    TResult Function(String message)? otpResendFailure,
    TResult Function(String message)? otpResendSuccess,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Success value) sucess,
    required TResult Function(_OtpVerifyFailed value) otpVerifyFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_OtpResendFailed value) otpResendFailure,
    required TResult Function(_OtpResendSuccess value) otpResendSuccess,
    required TResult Function(_Logout value) logout,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Success value)? sucess,
    TResult? Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_OtpResendFailed value)? otpResendFailure,
    TResult? Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult? Function(_Logout value)? logout,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_Success value)? sucess,
    TResult Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_OtpResendFailed value)? otpResendFailure,
    TResult Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(final String message) = _$AuthenticatedImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException exception});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$FailureImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.exception);

  @override
  final AppException exception;

  @override
  String toString() {
    return 'AuthState.failure(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) authenticated,
    required TResult Function(AppException exception) failure,
    required TResult Function() unauthenticated,
    required TResult Function(String message) registered,
    required TResult Function(String message) sucess,
    required TResult Function(String message) otpVerifyFailed,
    required TResult Function(String message) otpVerified,
    required TResult Function(String message) otpResendFailure,
    required TResult Function(String message) otpResendSuccess,
    required TResult Function() logout,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? authenticated,
    TResult? Function(AppException exception)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? registered,
    TResult? Function(String message)? sucess,
    TResult? Function(String message)? otpVerifyFailed,
    TResult? Function(String message)? otpVerified,
    TResult? Function(String message)? otpResendFailure,
    TResult? Function(String message)? otpResendSuccess,
    TResult? Function()? logout,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? authenticated,
    TResult Function(AppException exception)? failure,
    TResult Function()? unauthenticated,
    TResult Function(String message)? registered,
    TResult Function(String message)? sucess,
    TResult Function(String message)? otpVerifyFailed,
    TResult Function(String message)? otpVerified,
    TResult Function(String message)? otpResendFailure,
    TResult Function(String message)? otpResendSuccess,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Success value) sucess,
    required TResult Function(_OtpVerifyFailed value) otpVerifyFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_OtpResendFailed value) otpResendFailure,
    required TResult Function(_OtpResendSuccess value) otpResendSuccess,
    required TResult Function(_Logout value) logout,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Success value)? sucess,
    TResult? Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_OtpResendFailed value)? otpResendFailure,
    TResult? Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult? Function(_Logout value)? logout,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_Success value)? sucess,
    TResult Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_OtpResendFailed value)? otpResendFailure,
    TResult Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthState {
  const factory _Failure(final AppException exception) = _$FailureImpl;

  AppException get exception;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) authenticated,
    required TResult Function(AppException exception) failure,
    required TResult Function() unauthenticated,
    required TResult Function(String message) registered,
    required TResult Function(String message) sucess,
    required TResult Function(String message) otpVerifyFailed,
    required TResult Function(String message) otpVerified,
    required TResult Function(String message) otpResendFailure,
    required TResult Function(String message) otpResendSuccess,
    required TResult Function() logout,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? authenticated,
    TResult? Function(AppException exception)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? registered,
    TResult? Function(String message)? sucess,
    TResult? Function(String message)? otpVerifyFailed,
    TResult? Function(String message)? otpVerified,
    TResult? Function(String message)? otpResendFailure,
    TResult? Function(String message)? otpResendSuccess,
    TResult? Function()? logout,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? authenticated,
    TResult Function(AppException exception)? failure,
    TResult Function()? unauthenticated,
    TResult Function(String message)? registered,
    TResult Function(String message)? sucess,
    TResult Function(String message)? otpVerifyFailed,
    TResult Function(String message)? otpVerified,
    TResult Function(String message)? otpResendFailure,
    TResult Function(String message)? otpResendSuccess,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Success value) sucess,
    required TResult Function(_OtpVerifyFailed value) otpVerifyFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_OtpResendFailed value) otpResendFailure,
    required TResult Function(_OtpResendSuccess value) otpResendSuccess,
    required TResult Function(_Logout value) logout,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Success value)? sucess,
    TResult? Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_OtpResendFailed value)? otpResendFailure,
    TResult? Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult? Function(_Logout value)? logout,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_Success value)? sucess,
    TResult Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_OtpResendFailed value)? otpResendFailure,
    TResult Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$RegisteredImplCopyWith<$Res> {
  factory _$$RegisteredImplCopyWith(
          _$RegisteredImpl value, $Res Function(_$RegisteredImpl) then) =
      __$$RegisteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegisteredImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisteredImpl>
    implements _$$RegisteredImplCopyWith<$Res> {
  __$$RegisteredImplCopyWithImpl(
      _$RegisteredImpl _value, $Res Function(_$RegisteredImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RegisteredImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisteredImpl implements _Registered {
  const _$RegisteredImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.registered(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisteredImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisteredImplCopyWith<_$RegisteredImpl> get copyWith =>
      __$$RegisteredImplCopyWithImpl<_$RegisteredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) authenticated,
    required TResult Function(AppException exception) failure,
    required TResult Function() unauthenticated,
    required TResult Function(String message) registered,
    required TResult Function(String message) sucess,
    required TResult Function(String message) otpVerifyFailed,
    required TResult Function(String message) otpVerified,
    required TResult Function(String message) otpResendFailure,
    required TResult Function(String message) otpResendSuccess,
    required TResult Function() logout,
  }) {
    return registered(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? authenticated,
    TResult? Function(AppException exception)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? registered,
    TResult? Function(String message)? sucess,
    TResult? Function(String message)? otpVerifyFailed,
    TResult? Function(String message)? otpVerified,
    TResult? Function(String message)? otpResendFailure,
    TResult? Function(String message)? otpResendSuccess,
    TResult? Function()? logout,
  }) {
    return registered?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? authenticated,
    TResult Function(AppException exception)? failure,
    TResult Function()? unauthenticated,
    TResult Function(String message)? registered,
    TResult Function(String message)? sucess,
    TResult Function(String message)? otpVerifyFailed,
    TResult Function(String message)? otpVerified,
    TResult Function(String message)? otpResendFailure,
    TResult Function(String message)? otpResendSuccess,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Success value) sucess,
    required TResult Function(_OtpVerifyFailed value) otpVerifyFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_OtpResendFailed value) otpResendFailure,
    required TResult Function(_OtpResendSuccess value) otpResendSuccess,
    required TResult Function(_Logout value) logout,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Success value)? sucess,
    TResult? Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_OtpResendFailed value)? otpResendFailure,
    TResult? Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult? Function(_Logout value)? logout,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_Success value)? sucess,
    TResult Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_OtpResendFailed value)? otpResendFailure,
    TResult Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class _Registered implements AuthState {
  const factory _Registered(final String message) = _$RegisteredImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisteredImplCopyWith<_$RegisteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.sucess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) authenticated,
    required TResult Function(AppException exception) failure,
    required TResult Function() unauthenticated,
    required TResult Function(String message) registered,
    required TResult Function(String message) sucess,
    required TResult Function(String message) otpVerifyFailed,
    required TResult Function(String message) otpVerified,
    required TResult Function(String message) otpResendFailure,
    required TResult Function(String message) otpResendSuccess,
    required TResult Function() logout,
  }) {
    return sucess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? authenticated,
    TResult? Function(AppException exception)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? registered,
    TResult? Function(String message)? sucess,
    TResult? Function(String message)? otpVerifyFailed,
    TResult? Function(String message)? otpVerified,
    TResult? Function(String message)? otpResendFailure,
    TResult? Function(String message)? otpResendSuccess,
    TResult? Function()? logout,
  }) {
    return sucess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? authenticated,
    TResult Function(AppException exception)? failure,
    TResult Function()? unauthenticated,
    TResult Function(String message)? registered,
    TResult Function(String message)? sucess,
    TResult Function(String message)? otpVerifyFailed,
    TResult Function(String message)? otpVerified,
    TResult Function(String message)? otpResendFailure,
    TResult Function(String message)? otpResendSuccess,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Success value) sucess,
    required TResult Function(_OtpVerifyFailed value) otpVerifyFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_OtpResendFailed value) otpResendFailure,
    required TResult Function(_OtpResendSuccess value) otpResendSuccess,
    required TResult Function(_Logout value) logout,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Success value)? sucess,
    TResult? Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_OtpResendFailed value)? otpResendFailure,
    TResult? Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult? Function(_Logout value)? logout,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_Success value)? sucess,
    TResult Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_OtpResendFailed value)? otpResendFailure,
    TResult Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthState {
  const factory _Success(final String message) = _$SuccessImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerifyFailedImplCopyWith<$Res> {
  factory _$$OtpVerifyFailedImplCopyWith(_$OtpVerifyFailedImpl value,
          $Res Function(_$OtpVerifyFailedImpl) then) =
      __$$OtpVerifyFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtpVerifyFailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OtpVerifyFailedImpl>
    implements _$$OtpVerifyFailedImplCopyWith<$Res> {
  __$$OtpVerifyFailedImplCopyWithImpl(
      _$OtpVerifyFailedImpl _value, $Res Function(_$OtpVerifyFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OtpVerifyFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpVerifyFailedImpl implements _OtpVerifyFailed {
  const _$OtpVerifyFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.otpVerifyFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerifyFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerifyFailedImplCopyWith<_$OtpVerifyFailedImpl> get copyWith =>
      __$$OtpVerifyFailedImplCopyWithImpl<_$OtpVerifyFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) authenticated,
    required TResult Function(AppException exception) failure,
    required TResult Function() unauthenticated,
    required TResult Function(String message) registered,
    required TResult Function(String message) sucess,
    required TResult Function(String message) otpVerifyFailed,
    required TResult Function(String message) otpVerified,
    required TResult Function(String message) otpResendFailure,
    required TResult Function(String message) otpResendSuccess,
    required TResult Function() logout,
  }) {
    return otpVerifyFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? authenticated,
    TResult? Function(AppException exception)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? registered,
    TResult? Function(String message)? sucess,
    TResult? Function(String message)? otpVerifyFailed,
    TResult? Function(String message)? otpVerified,
    TResult? Function(String message)? otpResendFailure,
    TResult? Function(String message)? otpResendSuccess,
    TResult? Function()? logout,
  }) {
    return otpVerifyFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? authenticated,
    TResult Function(AppException exception)? failure,
    TResult Function()? unauthenticated,
    TResult Function(String message)? registered,
    TResult Function(String message)? sucess,
    TResult Function(String message)? otpVerifyFailed,
    TResult Function(String message)? otpVerified,
    TResult Function(String message)? otpResendFailure,
    TResult Function(String message)? otpResendSuccess,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (otpVerifyFailed != null) {
      return otpVerifyFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Success value) sucess,
    required TResult Function(_OtpVerifyFailed value) otpVerifyFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_OtpResendFailed value) otpResendFailure,
    required TResult Function(_OtpResendSuccess value) otpResendSuccess,
    required TResult Function(_Logout value) logout,
  }) {
    return otpVerifyFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Success value)? sucess,
    TResult? Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_OtpResendFailed value)? otpResendFailure,
    TResult? Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult? Function(_Logout value)? logout,
  }) {
    return otpVerifyFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_Success value)? sucess,
    TResult Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_OtpResendFailed value)? otpResendFailure,
    TResult Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (otpVerifyFailed != null) {
      return otpVerifyFailed(this);
    }
    return orElse();
  }
}

abstract class _OtpVerifyFailed implements AuthState {
  const factory _OtpVerifyFailed(final String message) = _$OtpVerifyFailedImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpVerifyFailedImplCopyWith<_$OtpVerifyFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerifiedImplCopyWith<$Res> {
  factory _$$OtpVerifiedImplCopyWith(
          _$OtpVerifiedImpl value, $Res Function(_$OtpVerifiedImpl) then) =
      __$$OtpVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtpVerifiedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OtpVerifiedImpl>
    implements _$$OtpVerifiedImplCopyWith<$Res> {
  __$$OtpVerifiedImplCopyWithImpl(
      _$OtpVerifiedImpl _value, $Res Function(_$OtpVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OtpVerifiedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpVerifiedImpl implements _OtpVerified {
  const _$OtpVerifiedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.otpVerified(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerifiedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerifiedImplCopyWith<_$OtpVerifiedImpl> get copyWith =>
      __$$OtpVerifiedImplCopyWithImpl<_$OtpVerifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) authenticated,
    required TResult Function(AppException exception) failure,
    required TResult Function() unauthenticated,
    required TResult Function(String message) registered,
    required TResult Function(String message) sucess,
    required TResult Function(String message) otpVerifyFailed,
    required TResult Function(String message) otpVerified,
    required TResult Function(String message) otpResendFailure,
    required TResult Function(String message) otpResendSuccess,
    required TResult Function() logout,
  }) {
    return otpVerified(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? authenticated,
    TResult? Function(AppException exception)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? registered,
    TResult? Function(String message)? sucess,
    TResult? Function(String message)? otpVerifyFailed,
    TResult? Function(String message)? otpVerified,
    TResult? Function(String message)? otpResendFailure,
    TResult? Function(String message)? otpResendSuccess,
    TResult? Function()? logout,
  }) {
    return otpVerified?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? authenticated,
    TResult Function(AppException exception)? failure,
    TResult Function()? unauthenticated,
    TResult Function(String message)? registered,
    TResult Function(String message)? sucess,
    TResult Function(String message)? otpVerifyFailed,
    TResult Function(String message)? otpVerified,
    TResult Function(String message)? otpResendFailure,
    TResult Function(String message)? otpResendSuccess,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Success value) sucess,
    required TResult Function(_OtpVerifyFailed value) otpVerifyFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_OtpResendFailed value) otpResendFailure,
    required TResult Function(_OtpResendSuccess value) otpResendSuccess,
    required TResult Function(_Logout value) logout,
  }) {
    return otpVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Success value)? sucess,
    TResult? Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_OtpResendFailed value)? otpResendFailure,
    TResult? Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult? Function(_Logout value)? logout,
  }) {
    return otpVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_Success value)? sucess,
    TResult Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_OtpResendFailed value)? otpResendFailure,
    TResult Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(this);
    }
    return orElse();
  }
}

abstract class _OtpVerified implements AuthState {
  const factory _OtpVerified(final String message) = _$OtpVerifiedImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpVerifiedImplCopyWith<_$OtpVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpResendFailedImplCopyWith<$Res> {
  factory _$$OtpResendFailedImplCopyWith(_$OtpResendFailedImpl value,
          $Res Function(_$OtpResendFailedImpl) then) =
      __$$OtpResendFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtpResendFailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OtpResendFailedImpl>
    implements _$$OtpResendFailedImplCopyWith<$Res> {
  __$$OtpResendFailedImplCopyWithImpl(
      _$OtpResendFailedImpl _value, $Res Function(_$OtpResendFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OtpResendFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpResendFailedImpl implements _OtpResendFailed {
  const _$OtpResendFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.otpResendFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpResendFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpResendFailedImplCopyWith<_$OtpResendFailedImpl> get copyWith =>
      __$$OtpResendFailedImplCopyWithImpl<_$OtpResendFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) authenticated,
    required TResult Function(AppException exception) failure,
    required TResult Function() unauthenticated,
    required TResult Function(String message) registered,
    required TResult Function(String message) sucess,
    required TResult Function(String message) otpVerifyFailed,
    required TResult Function(String message) otpVerified,
    required TResult Function(String message) otpResendFailure,
    required TResult Function(String message) otpResendSuccess,
    required TResult Function() logout,
  }) {
    return otpResendFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? authenticated,
    TResult? Function(AppException exception)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? registered,
    TResult? Function(String message)? sucess,
    TResult? Function(String message)? otpVerifyFailed,
    TResult? Function(String message)? otpVerified,
    TResult? Function(String message)? otpResendFailure,
    TResult? Function(String message)? otpResendSuccess,
    TResult? Function()? logout,
  }) {
    return otpResendFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? authenticated,
    TResult Function(AppException exception)? failure,
    TResult Function()? unauthenticated,
    TResult Function(String message)? registered,
    TResult Function(String message)? sucess,
    TResult Function(String message)? otpVerifyFailed,
    TResult Function(String message)? otpVerified,
    TResult Function(String message)? otpResendFailure,
    TResult Function(String message)? otpResendSuccess,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (otpResendFailure != null) {
      return otpResendFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Success value) sucess,
    required TResult Function(_OtpVerifyFailed value) otpVerifyFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_OtpResendFailed value) otpResendFailure,
    required TResult Function(_OtpResendSuccess value) otpResendSuccess,
    required TResult Function(_Logout value) logout,
  }) {
    return otpResendFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Success value)? sucess,
    TResult? Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_OtpResendFailed value)? otpResendFailure,
    TResult? Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult? Function(_Logout value)? logout,
  }) {
    return otpResendFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_Success value)? sucess,
    TResult Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_OtpResendFailed value)? otpResendFailure,
    TResult Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (otpResendFailure != null) {
      return otpResendFailure(this);
    }
    return orElse();
  }
}

abstract class _OtpResendFailed implements AuthState {
  const factory _OtpResendFailed(final String message) = _$OtpResendFailedImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpResendFailedImplCopyWith<_$OtpResendFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpResendSuccessImplCopyWith<$Res> {
  factory _$$OtpResendSuccessImplCopyWith(_$OtpResendSuccessImpl value,
          $Res Function(_$OtpResendSuccessImpl) then) =
      __$$OtpResendSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtpResendSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OtpResendSuccessImpl>
    implements _$$OtpResendSuccessImplCopyWith<$Res> {
  __$$OtpResendSuccessImplCopyWithImpl(_$OtpResendSuccessImpl _value,
      $Res Function(_$OtpResendSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OtpResendSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpResendSuccessImpl implements _OtpResendSuccess {
  const _$OtpResendSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.otpResendSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpResendSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpResendSuccessImplCopyWith<_$OtpResendSuccessImpl> get copyWith =>
      __$$OtpResendSuccessImplCopyWithImpl<_$OtpResendSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) authenticated,
    required TResult Function(AppException exception) failure,
    required TResult Function() unauthenticated,
    required TResult Function(String message) registered,
    required TResult Function(String message) sucess,
    required TResult Function(String message) otpVerifyFailed,
    required TResult Function(String message) otpVerified,
    required TResult Function(String message) otpResendFailure,
    required TResult Function(String message) otpResendSuccess,
    required TResult Function() logout,
  }) {
    return otpResendSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? authenticated,
    TResult? Function(AppException exception)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? registered,
    TResult? Function(String message)? sucess,
    TResult? Function(String message)? otpVerifyFailed,
    TResult? Function(String message)? otpVerified,
    TResult? Function(String message)? otpResendFailure,
    TResult? Function(String message)? otpResendSuccess,
    TResult? Function()? logout,
  }) {
    return otpResendSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? authenticated,
    TResult Function(AppException exception)? failure,
    TResult Function()? unauthenticated,
    TResult Function(String message)? registered,
    TResult Function(String message)? sucess,
    TResult Function(String message)? otpVerifyFailed,
    TResult Function(String message)? otpVerified,
    TResult Function(String message)? otpResendFailure,
    TResult Function(String message)? otpResendSuccess,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (otpResendSuccess != null) {
      return otpResendSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Success value) sucess,
    required TResult Function(_OtpVerifyFailed value) otpVerifyFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_OtpResendFailed value) otpResendFailure,
    required TResult Function(_OtpResendSuccess value) otpResendSuccess,
    required TResult Function(_Logout value) logout,
  }) {
    return otpResendSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Success value)? sucess,
    TResult? Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_OtpResendFailed value)? otpResendFailure,
    TResult? Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult? Function(_Logout value)? logout,
  }) {
    return otpResendSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_Success value)? sucess,
    TResult Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_OtpResendFailed value)? otpResendFailure,
    TResult Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (otpResendSuccess != null) {
      return otpResendSuccess(this);
    }
    return orElse();
  }
}

abstract class _OtpResendSuccess implements AuthState {
  const factory _OtpResendSuccess(final String message) =
      _$OtpResendSuccessImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpResendSuccessImplCopyWith<_$OtpResendSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthState.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) authenticated,
    required TResult Function(AppException exception) failure,
    required TResult Function() unauthenticated,
    required TResult Function(String message) registered,
    required TResult Function(String message) sucess,
    required TResult Function(String message) otpVerifyFailed,
    required TResult Function(String message) otpVerified,
    required TResult Function(String message) otpResendFailure,
    required TResult Function(String message) otpResendSuccess,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? authenticated,
    TResult? Function(AppException exception)? failure,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? registered,
    TResult? Function(String message)? sucess,
    TResult? Function(String message)? otpVerifyFailed,
    TResult? Function(String message)? otpVerified,
    TResult? Function(String message)? otpResendFailure,
    TResult? Function(String message)? otpResendSuccess,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? authenticated,
    TResult Function(AppException exception)? failure,
    TResult Function()? unauthenticated,
    TResult Function(String message)? registered,
    TResult Function(String message)? sucess,
    TResult Function(String message)? otpVerifyFailed,
    TResult Function(String message)? otpVerified,
    TResult Function(String message)? otpResendFailure,
    TResult Function(String message)? otpResendSuccess,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Success value) sucess,
    required TResult Function(_OtpVerifyFailed value) otpVerifyFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_OtpResendFailed value) otpResendFailure,
    required TResult Function(_OtpResendSuccess value) otpResendSuccess,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Success value)? sucess,
    TResult? Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_OtpResendFailed value)? otpResendFailure,
    TResult? Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_Success value)? sucess,
    TResult Function(_OtpVerifyFailed value)? otpVerifyFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_OtpResendFailed value)? otpResendFailure,
    TResult Function(_OtpResendSuccess value)? otpResendSuccess,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthState {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)
        registerRequested,
    required TResult Function() logoutRequested,
    required TResult Function() checkAuthStatus,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(String email) resendOTP,
    required TResult Function(String idToken) googleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult? Function()? logoutRequested,
    TResult? Function()? checkAuthStatus,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String email)? resendOTP,
    TResult? Function(String idToken)? googleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult Function()? logoutRequested,
    TResult Function()? checkAuthStatus,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String email)? resendOTP,
    TResult Function(String idToken)? googleSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(RegisterRequested value) registerRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
    required TResult Function(RequestVerifyOTP value) verifyOTP,
    required TResult Function(ResendOTP value) resendOTP,
    required TResult Function(GoogleSignInRequested value) googleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(RegisterRequested value)? registerRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
    TResult? Function(RequestVerifyOTP value)? verifyOTP,
    TResult? Function(ResendOTP value)? resendOTP,
    TResult? Function(GoogleSignInRequested value)? googleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(RegisterRequested value)? registerRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    TResult Function(RequestVerifyOTP value)? verifyOTP,
    TResult Function(ResendOTP value)? resendOTP,
    TResult Function(GoogleSignInRequested value)? googleSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginRequestedImplCopyWith<$Res> {
  factory _$$LoginRequestedImplCopyWith(_$LoginRequestedImpl value,
          $Res Function(_$LoginRequestedImpl) then) =
      __$$LoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginRequestedImpl>
    implements _$$LoginRequestedImplCopyWith<$Res> {
  __$$LoginRequestedImplCopyWithImpl(
      _$LoginRequestedImpl _value, $Res Function(_$LoginRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginRequestedImpl implements LoginRequested {
  const _$LoginRequestedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      __$$LoginRequestedImplCopyWithImpl<_$LoginRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)
        registerRequested,
    required TResult Function() logoutRequested,
    required TResult Function() checkAuthStatus,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(String email) resendOTP,
    required TResult Function(String idToken) googleSignIn,
  }) {
    return loginRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult? Function()? logoutRequested,
    TResult? Function()? checkAuthStatus,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String email)? resendOTP,
    TResult? Function(String idToken)? googleSignIn,
  }) {
    return loginRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult Function()? logoutRequested,
    TResult Function()? checkAuthStatus,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String email)? resendOTP,
    TResult Function(String idToken)? googleSignIn,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(RegisterRequested value) registerRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
    required TResult Function(RequestVerifyOTP value) verifyOTP,
    required TResult Function(ResendOTP value) resendOTP,
    required TResult Function(GoogleSignInRequested value) googleSignIn,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(RegisterRequested value)? registerRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
    TResult? Function(RequestVerifyOTP value)? verifyOTP,
    TResult? Function(ResendOTP value)? resendOTP,
    TResult? Function(GoogleSignInRequested value)? googleSignIn,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(RegisterRequested value)? registerRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    TResult Function(RequestVerifyOTP value)? verifyOTP,
    TResult Function(ResendOTP value)? resendOTP,
    TResult Function(GoogleSignInRequested value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class LoginRequested implements AuthEvent {
  const factory LoginRequested(
      {required final String email,
      required final String password}) = _$LoginRequestedImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterRequestedImplCopyWith<$Res> {
  factory _$$RegisterRequestedImplCopyWith(_$RegisterRequestedImpl value,
          $Res Function(_$RegisterRequestedImpl) then) =
      __$$RegisterRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String phone,
      String password,
      String password2,
      File image,
      String name,
      String gender});
}

/// @nodoc
class __$$RegisterRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterRequestedImpl>
    implements _$$RegisterRequestedImplCopyWith<$Res> {
  __$$RegisterRequestedImplCopyWithImpl(_$RegisterRequestedImpl _value,
      $Res Function(_$RegisterRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phone = null,
    Object? password = null,
    Object? password2 = null,
    Object? image = null,
    Object? name = null,
    Object? gender = null,
  }) {
    return _then(_$RegisterRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      password2: null == password2
          ? _value.password2
          : password2 // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterRequestedImpl implements RegisterRequested {
  const _$RegisterRequestedImpl(
      {required this.email,
      required this.phone,
      required this.password,
      required this.password2,
      required this.image,
      required this.name,
      required this.gender});

  @override
  final String email;
  @override
  final String phone;
  @override
  final String password;
  @override
  final String password2;
  @override
  final File image;
  @override
  final String name;
  @override
  final String gender;

  @override
  String toString() {
    return 'AuthEvent.registerRequested(email: $email, phone: $phone, password: $password, password2: $password2, image: $image, name: $name, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.password2, password2) ||
                other.password2 == password2) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, phone, password, password2, image, name, gender);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterRequestedImplCopyWith<_$RegisterRequestedImpl> get copyWith =>
      __$$RegisterRequestedImplCopyWithImpl<_$RegisterRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)
        registerRequested,
    required TResult Function() logoutRequested,
    required TResult Function() checkAuthStatus,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(String email) resendOTP,
    required TResult Function(String idToken) googleSignIn,
  }) {
    return registerRequested(
        email, phone, password, password2, image, name, gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult? Function()? logoutRequested,
    TResult? Function()? checkAuthStatus,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String email)? resendOTP,
    TResult? Function(String idToken)? googleSignIn,
  }) {
    return registerRequested?.call(
        email, phone, password, password2, image, name, gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult Function()? logoutRequested,
    TResult Function()? checkAuthStatus,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String email)? resendOTP,
    TResult Function(String idToken)? googleSignIn,
    required TResult orElse(),
  }) {
    if (registerRequested != null) {
      return registerRequested(
          email, phone, password, password2, image, name, gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(RegisterRequested value) registerRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
    required TResult Function(RequestVerifyOTP value) verifyOTP,
    required TResult Function(ResendOTP value) resendOTP,
    required TResult Function(GoogleSignInRequested value) googleSignIn,
  }) {
    return registerRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(RegisterRequested value)? registerRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
    TResult? Function(RequestVerifyOTP value)? verifyOTP,
    TResult? Function(ResendOTP value)? resendOTP,
    TResult? Function(GoogleSignInRequested value)? googleSignIn,
  }) {
    return registerRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(RegisterRequested value)? registerRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    TResult Function(RequestVerifyOTP value)? verifyOTP,
    TResult Function(ResendOTP value)? resendOTP,
    TResult Function(GoogleSignInRequested value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (registerRequested != null) {
      return registerRequested(this);
    }
    return orElse();
  }
}

abstract class RegisterRequested implements AuthEvent {
  const factory RegisterRequested(
      {required final String email,
      required final String phone,
      required final String password,
      required final String password2,
      required final File image,
      required final String name,
      required final String gender}) = _$RegisterRequestedImpl;

  String get email;
  String get phone;
  String get password;
  String get password2;
  File get image;
  String get name;
  String get gender;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterRequestedImplCopyWith<_$RegisterRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutRequestedImplCopyWith<$Res> {
  factory _$$LogoutRequestedImplCopyWith(_$LogoutRequestedImpl value,
          $Res Function(_$LogoutRequestedImpl) then) =
      __$$LogoutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutRequestedImpl>
    implements _$$LogoutRequestedImplCopyWith<$Res> {
  __$$LogoutRequestedImplCopyWithImpl(
      _$LogoutRequestedImpl _value, $Res Function(_$LogoutRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutRequestedImpl implements LogoutRequested {
  const _$LogoutRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.logoutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)
        registerRequested,
    required TResult Function() logoutRequested,
    required TResult Function() checkAuthStatus,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(String email) resendOTP,
    required TResult Function(String idToken) googleSignIn,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult? Function()? logoutRequested,
    TResult? Function()? checkAuthStatus,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String email)? resendOTP,
    TResult? Function(String idToken)? googleSignIn,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult Function()? logoutRequested,
    TResult Function()? checkAuthStatus,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String email)? resendOTP,
    TResult Function(String idToken)? googleSignIn,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(RegisterRequested value) registerRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
    required TResult Function(RequestVerifyOTP value) verifyOTP,
    required TResult Function(ResendOTP value) resendOTP,
    required TResult Function(GoogleSignInRequested value) googleSignIn,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(RegisterRequested value)? registerRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
    TResult? Function(RequestVerifyOTP value)? verifyOTP,
    TResult? Function(ResendOTP value)? resendOTP,
    TResult? Function(GoogleSignInRequested value)? googleSignIn,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(RegisterRequested value)? registerRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    TResult Function(RequestVerifyOTP value)? verifyOTP,
    TResult Function(ResendOTP value)? resendOTP,
    TResult Function(GoogleSignInRequested value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class LogoutRequested implements AuthEvent {
  const factory LogoutRequested() = _$LogoutRequestedImpl;
}

/// @nodoc
abstract class _$$CheckAuthStatusImplCopyWith<$Res> {
  factory _$$CheckAuthStatusImplCopyWith(_$CheckAuthStatusImpl value,
          $Res Function(_$CheckAuthStatusImpl) then) =
      __$$CheckAuthStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAuthStatusImpl>
    implements _$$CheckAuthStatusImplCopyWith<$Res> {
  __$$CheckAuthStatusImplCopyWithImpl(
      _$CheckAuthStatusImpl _value, $Res Function(_$CheckAuthStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckAuthStatusImpl implements CheckAuthStatus {
  const _$CheckAuthStatusImpl();

  @override
  String toString() {
    return 'AuthEvent.checkAuthStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)
        registerRequested,
    required TResult Function() logoutRequested,
    required TResult Function() checkAuthStatus,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(String email) resendOTP,
    required TResult Function(String idToken) googleSignIn,
  }) {
    return checkAuthStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult? Function()? logoutRequested,
    TResult? Function()? checkAuthStatus,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String email)? resendOTP,
    TResult? Function(String idToken)? googleSignIn,
  }) {
    return checkAuthStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult Function()? logoutRequested,
    TResult Function()? checkAuthStatus,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String email)? resendOTP,
    TResult Function(String idToken)? googleSignIn,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(RegisterRequested value) registerRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
    required TResult Function(RequestVerifyOTP value) verifyOTP,
    required TResult Function(ResendOTP value) resendOTP,
    required TResult Function(GoogleSignInRequested value) googleSignIn,
  }) {
    return checkAuthStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(RegisterRequested value)? registerRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
    TResult? Function(RequestVerifyOTP value)? verifyOTP,
    TResult? Function(ResendOTP value)? resendOTP,
    TResult? Function(GoogleSignInRequested value)? googleSignIn,
  }) {
    return checkAuthStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(RegisterRequested value)? registerRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    TResult Function(RequestVerifyOTP value)? verifyOTP,
    TResult Function(ResendOTP value)? resendOTP,
    TResult Function(GoogleSignInRequested value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus(this);
    }
    return orElse();
  }
}

abstract class CheckAuthStatus implements AuthEvent {
  const factory CheckAuthStatus() = _$CheckAuthStatusImpl;
}

/// @nodoc
abstract class _$$RequestVerifyOTPImplCopyWith<$Res> {
  factory _$$RequestVerifyOTPImplCopyWith(_$RequestVerifyOTPImpl value,
          $Res Function(_$RequestVerifyOTPImpl) then) =
      __$$RequestVerifyOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$RequestVerifyOTPImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RequestVerifyOTPImpl>
    implements _$$RequestVerifyOTPImplCopyWith<$Res> {
  __$$RequestVerifyOTPImplCopyWithImpl(_$RequestVerifyOTPImpl _value,
      $Res Function(_$RequestVerifyOTPImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$RequestVerifyOTPImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestVerifyOTPImpl implements RequestVerifyOTP {
  const _$RequestVerifyOTPImpl({required this.otp});

  @override
  final String otp;

  @override
  String toString() {
    return 'AuthEvent.verifyOTP(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestVerifyOTPImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestVerifyOTPImplCopyWith<_$RequestVerifyOTPImpl> get copyWith =>
      __$$RequestVerifyOTPImplCopyWithImpl<_$RequestVerifyOTPImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)
        registerRequested,
    required TResult Function() logoutRequested,
    required TResult Function() checkAuthStatus,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(String email) resendOTP,
    required TResult Function(String idToken) googleSignIn,
  }) {
    return verifyOTP(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult? Function()? logoutRequested,
    TResult? Function()? checkAuthStatus,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String email)? resendOTP,
    TResult? Function(String idToken)? googleSignIn,
  }) {
    return verifyOTP?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult Function()? logoutRequested,
    TResult Function()? checkAuthStatus,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String email)? resendOTP,
    TResult Function(String idToken)? googleSignIn,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(RegisterRequested value) registerRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
    required TResult Function(RequestVerifyOTP value) verifyOTP,
    required TResult Function(ResendOTP value) resendOTP,
    required TResult Function(GoogleSignInRequested value) googleSignIn,
  }) {
    return verifyOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(RegisterRequested value)? registerRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
    TResult? Function(RequestVerifyOTP value)? verifyOTP,
    TResult? Function(ResendOTP value)? resendOTP,
    TResult? Function(GoogleSignInRequested value)? googleSignIn,
  }) {
    return verifyOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(RegisterRequested value)? registerRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    TResult Function(RequestVerifyOTP value)? verifyOTP,
    TResult Function(ResendOTP value)? resendOTP,
    TResult Function(GoogleSignInRequested value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(this);
    }
    return orElse();
  }
}

abstract class RequestVerifyOTP implements AuthEvent {
  const factory RequestVerifyOTP({required final String otp}) =
      _$RequestVerifyOTPImpl;

  String get otp;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestVerifyOTPImplCopyWith<_$RequestVerifyOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOTPImplCopyWith<$Res> {
  factory _$$ResendOTPImplCopyWith(
          _$ResendOTPImpl value, $Res Function(_$ResendOTPImpl) then) =
      __$$ResendOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResendOTPImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResendOTPImpl>
    implements _$$ResendOTPImplCopyWith<$Res> {
  __$$ResendOTPImplCopyWithImpl(
      _$ResendOTPImpl _value, $Res Function(_$ResendOTPImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResendOTPImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResendOTPImpl implements ResendOTP {
  const _$ResendOTPImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resendOTP(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOTPImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendOTPImplCopyWith<_$ResendOTPImpl> get copyWith =>
      __$$ResendOTPImplCopyWithImpl<_$ResendOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)
        registerRequested,
    required TResult Function() logoutRequested,
    required TResult Function() checkAuthStatus,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(String email) resendOTP,
    required TResult Function(String idToken) googleSignIn,
  }) {
    return resendOTP(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult? Function()? logoutRequested,
    TResult? Function()? checkAuthStatus,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String email)? resendOTP,
    TResult? Function(String idToken)? googleSignIn,
  }) {
    return resendOTP?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult Function()? logoutRequested,
    TResult Function()? checkAuthStatus,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String email)? resendOTP,
    TResult Function(String idToken)? googleSignIn,
    required TResult orElse(),
  }) {
    if (resendOTP != null) {
      return resendOTP(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(RegisterRequested value) registerRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
    required TResult Function(RequestVerifyOTP value) verifyOTP,
    required TResult Function(ResendOTP value) resendOTP,
    required TResult Function(GoogleSignInRequested value) googleSignIn,
  }) {
    return resendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(RegisterRequested value)? registerRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
    TResult? Function(RequestVerifyOTP value)? verifyOTP,
    TResult? Function(ResendOTP value)? resendOTP,
    TResult? Function(GoogleSignInRequested value)? googleSignIn,
  }) {
    return resendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(RegisterRequested value)? registerRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    TResult Function(RequestVerifyOTP value)? verifyOTP,
    TResult Function(ResendOTP value)? resendOTP,
    TResult Function(GoogleSignInRequested value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (resendOTP != null) {
      return resendOTP(this);
    }
    return orElse();
  }
}

abstract class ResendOTP implements AuthEvent {
  const factory ResendOTP({required final String email}) = _$ResendOTPImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendOTPImplCopyWith<_$ResendOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleSignInRequestedImplCopyWith<$Res> {
  factory _$$GoogleSignInRequestedImplCopyWith(
          _$GoogleSignInRequestedImpl value,
          $Res Function(_$GoogleSignInRequestedImpl) then) =
      __$$GoogleSignInRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String idToken});
}

/// @nodoc
class __$$GoogleSignInRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GoogleSignInRequestedImpl>
    implements _$$GoogleSignInRequestedImplCopyWith<$Res> {
  __$$GoogleSignInRequestedImplCopyWithImpl(_$GoogleSignInRequestedImpl _value,
      $Res Function(_$GoogleSignInRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
  }) {
    return _then(_$GoogleSignInRequestedImpl(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GoogleSignInRequestedImpl implements GoogleSignInRequested {
  const _$GoogleSignInRequestedImpl({required this.idToken});

  @override
  final String idToken;

  @override
  String toString() {
    return 'AuthEvent.googleSignIn(idToken: $idToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSignInRequestedImpl &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idToken);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleSignInRequestedImplCopyWith<_$GoogleSignInRequestedImpl>
      get copyWith => __$$GoogleSignInRequestedImplCopyWithImpl<
          _$GoogleSignInRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)
        registerRequested,
    required TResult Function() logoutRequested,
    required TResult Function() checkAuthStatus,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(String email) resendOTP,
    required TResult Function(String idToken) googleSignIn,
  }) {
    return googleSignIn(idToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult? Function()? logoutRequested,
    TResult? Function()? checkAuthStatus,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String email)? resendOTP,
    TResult? Function(String idToken)? googleSignIn,
  }) {
    return googleSignIn?.call(idToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String email, String phone, String password,
            String password2, File image, String name, String gender)?
        registerRequested,
    TResult Function()? logoutRequested,
    TResult Function()? checkAuthStatus,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String email)? resendOTP,
    TResult Function(String idToken)? googleSignIn,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn(idToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(RegisterRequested value) registerRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
    required TResult Function(RequestVerifyOTP value) verifyOTP,
    required TResult Function(ResendOTP value) resendOTP,
    required TResult Function(GoogleSignInRequested value) googleSignIn,
  }) {
    return googleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(RegisterRequested value)? registerRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(CheckAuthStatus value)? checkAuthStatus,
    TResult? Function(RequestVerifyOTP value)? verifyOTP,
    TResult? Function(ResendOTP value)? resendOTP,
    TResult? Function(GoogleSignInRequested value)? googleSignIn,
  }) {
    return googleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(RegisterRequested value)? registerRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    TResult Function(RequestVerifyOTP value)? verifyOTP,
    TResult Function(ResendOTP value)? resendOTP,
    TResult Function(GoogleSignInRequested value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInRequested implements AuthEvent {
  const factory GoogleSignInRequested({required final String idToken}) =
      _$GoogleSignInRequestedImpl;

  String get idToken;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleSignInRequestedImplCopyWith<_$GoogleSignInRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
