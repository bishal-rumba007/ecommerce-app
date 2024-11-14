// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PasswordManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email) resendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(
            int userId, String newPassword, String confirmPassword)
        resetPassword,
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email)? resendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(int userId, String newPassword, String confirmPassword)?
        resetPassword,
    TResult? Function(
            String oldPassword, String newPassword, String confirmPassword)?
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? forgotPassword,
    TResult Function(String email)? resendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(int userId, String newPassword, String confirmPassword)?
        resetPassword,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordManagementEventCopyWith<$Res> {
  factory $PasswordManagementEventCopyWith(PasswordManagementEvent value,
          $Res Function(PasswordManagementEvent) then) =
      _$PasswordManagementEventCopyWithImpl<$Res, PasswordManagementEvent>;
}

/// @nodoc
class _$PasswordManagementEventCopyWithImpl<$Res,
        $Val extends PasswordManagementEvent>
    implements $PasswordManagementEventCopyWith<$Res> {
  _$PasswordManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ForgotPasswordImplCopyWith<$Res> {
  factory _$$ForgotPasswordImplCopyWith(_$ForgotPasswordImpl value,
          $Res Function(_$ForgotPasswordImpl) then) =
      __$$ForgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotPasswordImplCopyWithImpl<$Res>
    extends _$PasswordManagementEventCopyWithImpl<$Res, _$ForgotPasswordImpl>
    implements _$$ForgotPasswordImplCopyWith<$Res> {
  __$$ForgotPasswordImplCopyWithImpl(
      _$ForgotPasswordImpl _value, $Res Function(_$ForgotPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordImpl implements ForgotPassword {
  const _$ForgotPasswordImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'PasswordManagementEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      __$$ForgotPasswordImplCopyWithImpl<_$ForgotPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email) resendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(
            int userId, String newPassword, String confirmPassword)
        resetPassword,
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        changePassword,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email)? resendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(int userId, String newPassword, String confirmPassword)?
        resetPassword,
    TResult? Function(
            String oldPassword, String newPassword, String confirmPassword)?
        changePassword,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? forgotPassword,
    TResult Function(String email)? resendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(int userId, String newPassword, String confirmPassword)?
        resetPassword,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ChangePassword value) changePassword,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(ChangePassword value)? changePassword,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class ForgotPassword implements PasswordManagementEvent {
  const factory ForgotPassword({required final String email}) =
      _$ForgotPasswordImpl;

  String get email;

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOtpImplCopyWith<$Res> {
  factory _$$ResendOtpImplCopyWith(
          _$ResendOtpImpl value, $Res Function(_$ResendOtpImpl) then) =
      __$$ResendOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResendOtpImplCopyWithImpl<$Res>
    extends _$PasswordManagementEventCopyWithImpl<$Res, _$ResendOtpImpl>
    implements _$$ResendOtpImplCopyWith<$Res> {
  __$$ResendOtpImplCopyWithImpl(
      _$ResendOtpImpl _value, $Res Function(_$ResendOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResendOtpImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResendOtpImpl implements ResendOtp {
  const _$ResendOtpImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'PasswordManagementEvent.resendOtp(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOtpImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendOtpImplCopyWith<_$ResendOtpImpl> get copyWith =>
      __$$ResendOtpImplCopyWithImpl<_$ResendOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email) resendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(
            int userId, String newPassword, String confirmPassword)
        resetPassword,
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        changePassword,
  }) {
    return resendOtp(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email)? resendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(int userId, String newPassword, String confirmPassword)?
        resetPassword,
    TResult? Function(
            String oldPassword, String newPassword, String confirmPassword)?
        changePassword,
  }) {
    return resendOtp?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? forgotPassword,
    TResult Function(String email)? resendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(int userId, String newPassword, String confirmPassword)?
        resetPassword,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ChangePassword value) changePassword,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(ChangePassword value)? changePassword,
  }) {
    return resendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class ResendOtp implements PasswordManagementEvent {
  const factory ResendOtp({required final String email}) = _$ResendOtpImpl;

  String get email;

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendOtpImplCopyWith<_$ResendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpCode});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$PasswordManagementEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_$VerifyOtpImpl(
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements VerifyOtp {
  const _$VerifyOtpImpl({required this.otpCode});

  @override
  final String otpCode;

  @override
  String toString() {
    return 'PasswordManagementEvent.verifyOtp(otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email) resendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(
            int userId, String newPassword, String confirmPassword)
        resetPassword,
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        changePassword,
  }) {
    return verifyOtp(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email)? resendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(int userId, String newPassword, String confirmPassword)?
        resetPassword,
    TResult? Function(
            String oldPassword, String newPassword, String confirmPassword)?
        changePassword,
  }) {
    return verifyOtp?.call(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? forgotPassword,
    TResult Function(String email)? resendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(int userId, String newPassword, String confirmPassword)?
        resetPassword,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ChangePassword value) changePassword,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(ChangePassword value)? changePassword,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtp implements PasswordManagementEvent {
  const factory VerifyOtp({required final String otpCode}) = _$VerifyOtpImpl;

  String get otpCode;

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordImplCopyWith<$Res> {
  factory _$$ResetPasswordImplCopyWith(
          _$ResetPasswordImpl value, $Res Function(_$ResetPasswordImpl) then) =
      __$$ResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId, String newPassword, String confirmPassword});
}

/// @nodoc
class __$$ResetPasswordImplCopyWithImpl<$Res>
    extends _$PasswordManagementEventCopyWithImpl<$Res, _$ResetPasswordImpl>
    implements _$$ResetPasswordImplCopyWith<$Res> {
  __$$ResetPasswordImplCopyWithImpl(
      _$ResetPasswordImpl _value, $Res Function(_$ResetPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$ResetPasswordImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordImpl implements ResetPassword {
  const _$ResetPasswordImpl(
      {required this.userId,
      required this.newPassword,
      required this.confirmPassword});

  @override
  final int userId;
  @override
  final String newPassword;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'PasswordManagementEvent.resetPassword(userId: $userId, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, newPassword, confirmPassword);

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      __$$ResetPasswordImplCopyWithImpl<_$ResetPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email) resendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(
            int userId, String newPassword, String confirmPassword)
        resetPassword,
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        changePassword,
  }) {
    return resetPassword(userId, newPassword, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email)? resendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(int userId, String newPassword, String confirmPassword)?
        resetPassword,
    TResult? Function(
            String oldPassword, String newPassword, String confirmPassword)?
        changePassword,
  }) {
    return resetPassword?.call(userId, newPassword, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? forgotPassword,
    TResult Function(String email)? resendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(int userId, String newPassword, String confirmPassword)?
        resetPassword,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(userId, newPassword, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ChangePassword value) changePassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(ChangePassword value)? changePassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPassword implements PasswordManagementEvent {
  const factory ResetPassword(
      {required final int userId,
      required final String newPassword,
      required final String confirmPassword}) = _$ResetPasswordImpl;

  int get userId;
  String get newPassword;
  String get confirmPassword;

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordImplCopyWith<$Res> {
  factory _$$ChangePasswordImplCopyWith(_$ChangePasswordImpl value,
          $Res Function(_$ChangePasswordImpl) then) =
      __$$ChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String oldPassword, String newPassword, String confirmPassword});
}

/// @nodoc
class __$$ChangePasswordImplCopyWithImpl<$Res>
    extends _$PasswordManagementEventCopyWithImpl<$Res, _$ChangePasswordImpl>
    implements _$$ChangePasswordImplCopyWith<$Res> {
  __$$ChangePasswordImplCopyWithImpl(
      _$ChangePasswordImpl _value, $Res Function(_$ChangePasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$ChangePasswordImpl(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePasswordImpl implements ChangePassword {
  const _$ChangePasswordImpl(
      {required this.oldPassword,
      required this.newPassword,
      required this.confirmPassword});

  @override
  final String oldPassword;
  @override
  final String newPassword;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'PasswordManagementEvent.changePassword(oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, oldPassword, newPassword, confirmPassword);

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      __$$ChangePasswordImplCopyWithImpl<_$ChangePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email) resendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(
            int userId, String newPassword, String confirmPassword)
        resetPassword,
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        changePassword,
  }) {
    return changePassword(oldPassword, newPassword, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email)? resendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(int userId, String newPassword, String confirmPassword)?
        resetPassword,
    TResult? Function(
            String oldPassword, String newPassword, String confirmPassword)?
        changePassword,
  }) {
    return changePassword?.call(oldPassword, newPassword, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? forgotPassword,
    TResult Function(String email)? resendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(int userId, String newPassword, String confirmPassword)?
        resetPassword,
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(oldPassword, newPassword, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class ChangePassword implements PasswordManagementEvent {
  const factory ChangePassword(
      {required final String oldPassword,
      required final String newPassword,
      required final String confirmPassword}) = _$ChangePasswordImpl;

  String get oldPassword;
  String get newPassword;
  String get confirmPassword;

  /// Create a copy of PasswordManagementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PasswordManagementState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String error) forgotPasswordFailure,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String error) otpVerificationFailure,
    required TResult Function() otpResendSuccess,
    required TResult Function(String error) otpResendFailure,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String error) passwordResetFailure,
    required TResult Function() passwordChangeSuccess,
    required TResult Function(String error) passwordChangeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String error)? forgotPasswordFailure,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String error)? otpVerificationFailure,
    TResult? Function()? otpResendSuccess,
    TResult? Function(String error)? otpResendFailure,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String error)? passwordResetFailure,
    TResult? Function()? passwordChangeSuccess,
    TResult? Function(String error)? passwordChangeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String error)? forgotPasswordFailure,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String error)? otpVerificationFailure,
    TResult Function()? otpResendSuccess,
    TResult Function(String error)? otpResendFailure,
    TResult Function()? passwordResetSuccess,
    TResult Function(String error)? passwordResetFailure,
    TResult Function()? passwordChangeSuccess,
    TResult Function(String error)? passwordChangeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordManagementInitialState value) initial,
    required TResult Function(PasswordManagementLoadingState value) loading,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordFailureState value)
        forgotPasswordFailure,
    required TResult Function(OtpVerificationSuccessState value)
        otpVerificationSuccess,
    required TResult Function(OtpVerificationFailureState value)
        otpVerificationFailure,
    required TResult Function(OtpResendSuccessState value) otpResendSuccess,
    required TResult Function(OtpResendFailureState value) otpResendFailure,
    required TResult Function(PasswordResetSuccessState value)
        passwordResetSuccess,
    required TResult Function(PasswordResetFailureState value)
        passwordResetFailure,
    required TResult Function(PasswordChangeSuccessState value)
        passwordChangeSuccess,
    required TResult Function(PasswordChangeFailureState value)
        passwordChangeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordManagementInitialState value)? initial,
    TResult? Function(PasswordManagementLoadingState value)? loading,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult? Function(OtpVerificationSuccessState value)?
        otpVerificationSuccess,
    TResult? Function(OtpVerificationFailureState value)?
        otpVerificationFailure,
    TResult? Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult? Function(OtpResendFailureState value)? otpResendFailure,
    TResult? Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult? Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult? Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult? Function(PasswordChangeFailureState value)? passwordChangeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordManagementInitialState value)? initial,
    TResult Function(PasswordManagementLoadingState value)? loading,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult Function(OtpVerificationSuccessState value)? otpVerificationSuccess,
    TResult Function(OtpVerificationFailureState value)? otpVerificationFailure,
    TResult Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult Function(OtpResendFailureState value)? otpResendFailure,
    TResult Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult Function(PasswordChangeFailureState value)? passwordChangeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordManagementStateCopyWith<$Res> {
  factory $PasswordManagementStateCopyWith(PasswordManagementState value,
          $Res Function(PasswordManagementState) then) =
      _$PasswordManagementStateCopyWithImpl<$Res, PasswordManagementState>;
}

/// @nodoc
class _$PasswordManagementStateCopyWithImpl<$Res,
        $Val extends PasswordManagementState>
    implements $PasswordManagementStateCopyWith<$Res> {
  _$PasswordManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PasswordManagementInitialStateImplCopyWith<$Res> {
  factory _$$PasswordManagementInitialStateImplCopyWith(
          _$PasswordManagementInitialStateImpl value,
          $Res Function(_$PasswordManagementInitialStateImpl) then) =
      __$$PasswordManagementInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordManagementInitialStateImplCopyWithImpl<$Res>
    extends _$PasswordManagementStateCopyWithImpl<$Res,
        _$PasswordManagementInitialStateImpl>
    implements _$$PasswordManagementInitialStateImplCopyWith<$Res> {
  __$$PasswordManagementInitialStateImplCopyWithImpl(
      _$PasswordManagementInitialStateImpl _value,
      $Res Function(_$PasswordManagementInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PasswordManagementInitialStateImpl
    implements PasswordManagementInitialState {
  const _$PasswordManagementInitialStateImpl();

  @override
  String toString() {
    return 'PasswordManagementState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordManagementInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String error) forgotPasswordFailure,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String error) otpVerificationFailure,
    required TResult Function() otpResendSuccess,
    required TResult Function(String error) otpResendFailure,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String error) passwordResetFailure,
    required TResult Function() passwordChangeSuccess,
    required TResult Function(String error) passwordChangeFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String error)? forgotPasswordFailure,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String error)? otpVerificationFailure,
    TResult? Function()? otpResendSuccess,
    TResult? Function(String error)? otpResendFailure,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String error)? passwordResetFailure,
    TResult? Function()? passwordChangeSuccess,
    TResult? Function(String error)? passwordChangeFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String error)? forgotPasswordFailure,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String error)? otpVerificationFailure,
    TResult Function()? otpResendSuccess,
    TResult Function(String error)? otpResendFailure,
    TResult Function()? passwordResetSuccess,
    TResult Function(String error)? passwordResetFailure,
    TResult Function()? passwordChangeSuccess,
    TResult Function(String error)? passwordChangeFailure,
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
    required TResult Function(PasswordManagementInitialState value) initial,
    required TResult Function(PasswordManagementLoadingState value) loading,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordFailureState value)
        forgotPasswordFailure,
    required TResult Function(OtpVerificationSuccessState value)
        otpVerificationSuccess,
    required TResult Function(OtpVerificationFailureState value)
        otpVerificationFailure,
    required TResult Function(OtpResendSuccessState value) otpResendSuccess,
    required TResult Function(OtpResendFailureState value) otpResendFailure,
    required TResult Function(PasswordResetSuccessState value)
        passwordResetSuccess,
    required TResult Function(PasswordResetFailureState value)
        passwordResetFailure,
    required TResult Function(PasswordChangeSuccessState value)
        passwordChangeSuccess,
    required TResult Function(PasswordChangeFailureState value)
        passwordChangeFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordManagementInitialState value)? initial,
    TResult? Function(PasswordManagementLoadingState value)? loading,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult? Function(OtpVerificationSuccessState value)?
        otpVerificationSuccess,
    TResult? Function(OtpVerificationFailureState value)?
        otpVerificationFailure,
    TResult? Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult? Function(OtpResendFailureState value)? otpResendFailure,
    TResult? Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult? Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult? Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult? Function(PasswordChangeFailureState value)? passwordChangeFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordManagementInitialState value)? initial,
    TResult Function(PasswordManagementLoadingState value)? loading,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult Function(OtpVerificationSuccessState value)? otpVerificationSuccess,
    TResult Function(OtpVerificationFailureState value)? otpVerificationFailure,
    TResult Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult Function(OtpResendFailureState value)? otpResendFailure,
    TResult Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult Function(PasswordChangeFailureState value)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PasswordManagementInitialState
    implements PasswordManagementState {
  const factory PasswordManagementInitialState() =
      _$PasswordManagementInitialStateImpl;
}

/// @nodoc
abstract class _$$PasswordManagementLoadingStateImplCopyWith<$Res> {
  factory _$$PasswordManagementLoadingStateImplCopyWith(
          _$PasswordManagementLoadingStateImpl value,
          $Res Function(_$PasswordManagementLoadingStateImpl) then) =
      __$$PasswordManagementLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordManagementLoadingStateImplCopyWithImpl<$Res>
    extends _$PasswordManagementStateCopyWithImpl<$Res,
        _$PasswordManagementLoadingStateImpl>
    implements _$$PasswordManagementLoadingStateImplCopyWith<$Res> {
  __$$PasswordManagementLoadingStateImplCopyWithImpl(
      _$PasswordManagementLoadingStateImpl _value,
      $Res Function(_$PasswordManagementLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PasswordManagementLoadingStateImpl
    implements PasswordManagementLoadingState {
  const _$PasswordManagementLoadingStateImpl();

  @override
  String toString() {
    return 'PasswordManagementState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordManagementLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String error) forgotPasswordFailure,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String error) otpVerificationFailure,
    required TResult Function() otpResendSuccess,
    required TResult Function(String error) otpResendFailure,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String error) passwordResetFailure,
    required TResult Function() passwordChangeSuccess,
    required TResult Function(String error) passwordChangeFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String error)? forgotPasswordFailure,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String error)? otpVerificationFailure,
    TResult? Function()? otpResendSuccess,
    TResult? Function(String error)? otpResendFailure,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String error)? passwordResetFailure,
    TResult? Function()? passwordChangeSuccess,
    TResult? Function(String error)? passwordChangeFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String error)? forgotPasswordFailure,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String error)? otpVerificationFailure,
    TResult Function()? otpResendSuccess,
    TResult Function(String error)? otpResendFailure,
    TResult Function()? passwordResetSuccess,
    TResult Function(String error)? passwordResetFailure,
    TResult Function()? passwordChangeSuccess,
    TResult Function(String error)? passwordChangeFailure,
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
    required TResult Function(PasswordManagementInitialState value) initial,
    required TResult Function(PasswordManagementLoadingState value) loading,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordFailureState value)
        forgotPasswordFailure,
    required TResult Function(OtpVerificationSuccessState value)
        otpVerificationSuccess,
    required TResult Function(OtpVerificationFailureState value)
        otpVerificationFailure,
    required TResult Function(OtpResendSuccessState value) otpResendSuccess,
    required TResult Function(OtpResendFailureState value) otpResendFailure,
    required TResult Function(PasswordResetSuccessState value)
        passwordResetSuccess,
    required TResult Function(PasswordResetFailureState value)
        passwordResetFailure,
    required TResult Function(PasswordChangeSuccessState value)
        passwordChangeSuccess,
    required TResult Function(PasswordChangeFailureState value)
        passwordChangeFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordManagementInitialState value)? initial,
    TResult? Function(PasswordManagementLoadingState value)? loading,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult? Function(OtpVerificationSuccessState value)?
        otpVerificationSuccess,
    TResult? Function(OtpVerificationFailureState value)?
        otpVerificationFailure,
    TResult? Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult? Function(OtpResendFailureState value)? otpResendFailure,
    TResult? Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult? Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult? Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult? Function(PasswordChangeFailureState value)? passwordChangeFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordManagementInitialState value)? initial,
    TResult Function(PasswordManagementLoadingState value)? loading,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult Function(OtpVerificationSuccessState value)? otpVerificationSuccess,
    TResult Function(OtpVerificationFailureState value)? otpVerificationFailure,
    TResult Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult Function(OtpResendFailureState value)? otpResendFailure,
    TResult Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult Function(PasswordChangeFailureState value)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PasswordManagementLoadingState
    implements PasswordManagementState {
  const factory PasswordManagementLoadingState() =
      _$PasswordManagementLoadingStateImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordSuccessStateImplCopyWith<$Res> {
  factory _$$ForgotPasswordSuccessStateImplCopyWith(
          _$ForgotPasswordSuccessStateImpl value,
          $Res Function(_$ForgotPasswordSuccessStateImpl) then) =
      __$$ForgotPasswordSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordSuccessStateImplCopyWithImpl<$Res>
    extends _$PasswordManagementStateCopyWithImpl<$Res,
        _$ForgotPasswordSuccessStateImpl>
    implements _$$ForgotPasswordSuccessStateImplCopyWith<$Res> {
  __$$ForgotPasswordSuccessStateImplCopyWithImpl(
      _$ForgotPasswordSuccessStateImpl _value,
      $Res Function(_$ForgotPasswordSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForgotPasswordSuccessStateImpl implements ForgotPasswordSuccessState {
  const _$ForgotPasswordSuccessStateImpl();

  @override
  String toString() {
    return 'PasswordManagementState.forgotPasswordSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String error) forgotPasswordFailure,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String error) otpVerificationFailure,
    required TResult Function() otpResendSuccess,
    required TResult Function(String error) otpResendFailure,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String error) passwordResetFailure,
    required TResult Function() passwordChangeSuccess,
    required TResult Function(String error) passwordChangeFailure,
  }) {
    return forgotPasswordSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String error)? forgotPasswordFailure,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String error)? otpVerificationFailure,
    TResult? Function()? otpResendSuccess,
    TResult? Function(String error)? otpResendFailure,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String error)? passwordResetFailure,
    TResult? Function()? passwordChangeSuccess,
    TResult? Function(String error)? passwordChangeFailure,
  }) {
    return forgotPasswordSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String error)? forgotPasswordFailure,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String error)? otpVerificationFailure,
    TResult Function()? otpResendSuccess,
    TResult Function(String error)? otpResendFailure,
    TResult Function()? passwordResetSuccess,
    TResult Function(String error)? passwordResetFailure,
    TResult Function()? passwordChangeSuccess,
    TResult Function(String error)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (forgotPasswordSuccess != null) {
      return forgotPasswordSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordManagementInitialState value) initial,
    required TResult Function(PasswordManagementLoadingState value) loading,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordFailureState value)
        forgotPasswordFailure,
    required TResult Function(OtpVerificationSuccessState value)
        otpVerificationSuccess,
    required TResult Function(OtpVerificationFailureState value)
        otpVerificationFailure,
    required TResult Function(OtpResendSuccessState value) otpResendSuccess,
    required TResult Function(OtpResendFailureState value) otpResendFailure,
    required TResult Function(PasswordResetSuccessState value)
        passwordResetSuccess,
    required TResult Function(PasswordResetFailureState value)
        passwordResetFailure,
    required TResult Function(PasswordChangeSuccessState value)
        passwordChangeSuccess,
    required TResult Function(PasswordChangeFailureState value)
        passwordChangeFailure,
  }) {
    return forgotPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordManagementInitialState value)? initial,
    TResult? Function(PasswordManagementLoadingState value)? loading,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult? Function(OtpVerificationSuccessState value)?
        otpVerificationSuccess,
    TResult? Function(OtpVerificationFailureState value)?
        otpVerificationFailure,
    TResult? Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult? Function(OtpResendFailureState value)? otpResendFailure,
    TResult? Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult? Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult? Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult? Function(PasswordChangeFailureState value)? passwordChangeFailure,
  }) {
    return forgotPasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordManagementInitialState value)? initial,
    TResult Function(PasswordManagementLoadingState value)? loading,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult Function(OtpVerificationSuccessState value)? otpVerificationSuccess,
    TResult Function(OtpVerificationFailureState value)? otpVerificationFailure,
    TResult Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult Function(OtpResendFailureState value)? otpResendFailure,
    TResult Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult Function(PasswordChangeFailureState value)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (forgotPasswordSuccess != null) {
      return forgotPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordSuccessState implements PasswordManagementState {
  const factory ForgotPasswordSuccessState() = _$ForgotPasswordSuccessStateImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordFailureStateImplCopyWith<$Res> {
  factory _$$ForgotPasswordFailureStateImplCopyWith(
          _$ForgotPasswordFailureStateImpl value,
          $Res Function(_$ForgotPasswordFailureStateImpl) then) =
      __$$ForgotPasswordFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ForgotPasswordFailureStateImplCopyWithImpl<$Res>
    extends _$PasswordManagementStateCopyWithImpl<$Res,
        _$ForgotPasswordFailureStateImpl>
    implements _$$ForgotPasswordFailureStateImplCopyWith<$Res> {
  __$$ForgotPasswordFailureStateImplCopyWithImpl(
      _$ForgotPasswordFailureStateImpl _value,
      $Res Function(_$ForgotPasswordFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ForgotPasswordFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordFailureStateImpl implements ForgotPasswordFailureState {
  const _$ForgotPasswordFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'PasswordManagementState.forgotPasswordFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordFailureStateImplCopyWith<_$ForgotPasswordFailureStateImpl>
      get copyWith => __$$ForgotPasswordFailureStateImplCopyWithImpl<
          _$ForgotPasswordFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String error) forgotPasswordFailure,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String error) otpVerificationFailure,
    required TResult Function() otpResendSuccess,
    required TResult Function(String error) otpResendFailure,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String error) passwordResetFailure,
    required TResult Function() passwordChangeSuccess,
    required TResult Function(String error) passwordChangeFailure,
  }) {
    return forgotPasswordFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String error)? forgotPasswordFailure,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String error)? otpVerificationFailure,
    TResult? Function()? otpResendSuccess,
    TResult? Function(String error)? otpResendFailure,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String error)? passwordResetFailure,
    TResult? Function()? passwordChangeSuccess,
    TResult? Function(String error)? passwordChangeFailure,
  }) {
    return forgotPasswordFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String error)? forgotPasswordFailure,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String error)? otpVerificationFailure,
    TResult Function()? otpResendSuccess,
    TResult Function(String error)? otpResendFailure,
    TResult Function()? passwordResetSuccess,
    TResult Function(String error)? passwordResetFailure,
    TResult Function()? passwordChangeSuccess,
    TResult Function(String error)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (forgotPasswordFailure != null) {
      return forgotPasswordFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordManagementInitialState value) initial,
    required TResult Function(PasswordManagementLoadingState value) loading,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordFailureState value)
        forgotPasswordFailure,
    required TResult Function(OtpVerificationSuccessState value)
        otpVerificationSuccess,
    required TResult Function(OtpVerificationFailureState value)
        otpVerificationFailure,
    required TResult Function(OtpResendSuccessState value) otpResendSuccess,
    required TResult Function(OtpResendFailureState value) otpResendFailure,
    required TResult Function(PasswordResetSuccessState value)
        passwordResetSuccess,
    required TResult Function(PasswordResetFailureState value)
        passwordResetFailure,
    required TResult Function(PasswordChangeSuccessState value)
        passwordChangeSuccess,
    required TResult Function(PasswordChangeFailureState value)
        passwordChangeFailure,
  }) {
    return forgotPasswordFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordManagementInitialState value)? initial,
    TResult? Function(PasswordManagementLoadingState value)? loading,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult? Function(OtpVerificationSuccessState value)?
        otpVerificationSuccess,
    TResult? Function(OtpVerificationFailureState value)?
        otpVerificationFailure,
    TResult? Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult? Function(OtpResendFailureState value)? otpResendFailure,
    TResult? Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult? Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult? Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult? Function(PasswordChangeFailureState value)? passwordChangeFailure,
  }) {
    return forgotPasswordFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordManagementInitialState value)? initial,
    TResult Function(PasswordManagementLoadingState value)? loading,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult Function(OtpVerificationSuccessState value)? otpVerificationSuccess,
    TResult Function(OtpVerificationFailureState value)? otpVerificationFailure,
    TResult Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult Function(OtpResendFailureState value)? otpResendFailure,
    TResult Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult Function(PasswordChangeFailureState value)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (forgotPasswordFailure != null) {
      return forgotPasswordFailure(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordFailureState implements PasswordManagementState {
  const factory ForgotPasswordFailureState(final String error) =
      _$ForgotPasswordFailureStateImpl;

  String get error;

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordFailureStateImplCopyWith<_$ForgotPasswordFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerificationSuccessStateImplCopyWith<$Res> {
  factory _$$OtpVerificationSuccessStateImplCopyWith(
          _$OtpVerificationSuccessStateImpl value,
          $Res Function(_$OtpVerificationSuccessStateImpl) then) =
      __$$OtpVerificationSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtpVerificationSuccessStateImplCopyWithImpl<$Res>
    extends _$PasswordManagementStateCopyWithImpl<$Res,
        _$OtpVerificationSuccessStateImpl>
    implements _$$OtpVerificationSuccessStateImplCopyWith<$Res> {
  __$$OtpVerificationSuccessStateImplCopyWithImpl(
      _$OtpVerificationSuccessStateImpl _value,
      $Res Function(_$OtpVerificationSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OtpVerificationSuccessStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpVerificationSuccessStateImpl implements OtpVerificationSuccessState {
  const _$OtpVerificationSuccessStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PasswordManagementState.otpVerificationSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationSuccessStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationSuccessStateImplCopyWith<_$OtpVerificationSuccessStateImpl>
      get copyWith => __$$OtpVerificationSuccessStateImplCopyWithImpl<
          _$OtpVerificationSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String error) forgotPasswordFailure,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String error) otpVerificationFailure,
    required TResult Function() otpResendSuccess,
    required TResult Function(String error) otpResendFailure,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String error) passwordResetFailure,
    required TResult Function() passwordChangeSuccess,
    required TResult Function(String error) passwordChangeFailure,
  }) {
    return otpVerificationSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String error)? forgotPasswordFailure,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String error)? otpVerificationFailure,
    TResult? Function()? otpResendSuccess,
    TResult? Function(String error)? otpResendFailure,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String error)? passwordResetFailure,
    TResult? Function()? passwordChangeSuccess,
    TResult? Function(String error)? passwordChangeFailure,
  }) {
    return otpVerificationSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String error)? forgotPasswordFailure,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String error)? otpVerificationFailure,
    TResult Function()? otpResendSuccess,
    TResult Function(String error)? otpResendFailure,
    TResult Function()? passwordResetSuccess,
    TResult Function(String error)? passwordResetFailure,
    TResult Function()? passwordChangeSuccess,
    TResult Function(String error)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (otpVerificationSuccess != null) {
      return otpVerificationSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordManagementInitialState value) initial,
    required TResult Function(PasswordManagementLoadingState value) loading,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordFailureState value)
        forgotPasswordFailure,
    required TResult Function(OtpVerificationSuccessState value)
        otpVerificationSuccess,
    required TResult Function(OtpVerificationFailureState value)
        otpVerificationFailure,
    required TResult Function(OtpResendSuccessState value) otpResendSuccess,
    required TResult Function(OtpResendFailureState value) otpResendFailure,
    required TResult Function(PasswordResetSuccessState value)
        passwordResetSuccess,
    required TResult Function(PasswordResetFailureState value)
        passwordResetFailure,
    required TResult Function(PasswordChangeSuccessState value)
        passwordChangeSuccess,
    required TResult Function(PasswordChangeFailureState value)
        passwordChangeFailure,
  }) {
    return otpVerificationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordManagementInitialState value)? initial,
    TResult? Function(PasswordManagementLoadingState value)? loading,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult? Function(OtpVerificationSuccessState value)?
        otpVerificationSuccess,
    TResult? Function(OtpVerificationFailureState value)?
        otpVerificationFailure,
    TResult? Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult? Function(OtpResendFailureState value)? otpResendFailure,
    TResult? Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult? Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult? Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult? Function(PasswordChangeFailureState value)? passwordChangeFailure,
  }) {
    return otpVerificationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordManagementInitialState value)? initial,
    TResult Function(PasswordManagementLoadingState value)? loading,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult Function(OtpVerificationSuccessState value)? otpVerificationSuccess,
    TResult Function(OtpVerificationFailureState value)? otpVerificationFailure,
    TResult Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult Function(OtpResendFailureState value)? otpResendFailure,
    TResult Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult Function(PasswordChangeFailureState value)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (otpVerificationSuccess != null) {
      return otpVerificationSuccess(this);
    }
    return orElse();
  }
}

abstract class OtpVerificationSuccessState implements PasswordManagementState {
  const factory OtpVerificationSuccessState(final String message) =
      _$OtpVerificationSuccessStateImpl;

  String get message;

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpVerificationSuccessStateImplCopyWith<_$OtpVerificationSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerificationFailureStateImplCopyWith<$Res> {
  factory _$$OtpVerificationFailureStateImplCopyWith(
          _$OtpVerificationFailureStateImpl value,
          $Res Function(_$OtpVerificationFailureStateImpl) then) =
      __$$OtpVerificationFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$OtpVerificationFailureStateImplCopyWithImpl<$Res>
    extends _$PasswordManagementStateCopyWithImpl<$Res,
        _$OtpVerificationFailureStateImpl>
    implements _$$OtpVerificationFailureStateImplCopyWith<$Res> {
  __$$OtpVerificationFailureStateImplCopyWithImpl(
      _$OtpVerificationFailureStateImpl _value,
      $Res Function(_$OtpVerificationFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OtpVerificationFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpVerificationFailureStateImpl implements OtpVerificationFailureState {
  const _$OtpVerificationFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'PasswordManagementState.otpVerificationFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationFailureStateImplCopyWith<_$OtpVerificationFailureStateImpl>
      get copyWith => __$$OtpVerificationFailureStateImplCopyWithImpl<
          _$OtpVerificationFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String error) forgotPasswordFailure,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String error) otpVerificationFailure,
    required TResult Function() otpResendSuccess,
    required TResult Function(String error) otpResendFailure,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String error) passwordResetFailure,
    required TResult Function() passwordChangeSuccess,
    required TResult Function(String error) passwordChangeFailure,
  }) {
    return otpVerificationFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String error)? forgotPasswordFailure,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String error)? otpVerificationFailure,
    TResult? Function()? otpResendSuccess,
    TResult? Function(String error)? otpResendFailure,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String error)? passwordResetFailure,
    TResult? Function()? passwordChangeSuccess,
    TResult? Function(String error)? passwordChangeFailure,
  }) {
    return otpVerificationFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String error)? forgotPasswordFailure,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String error)? otpVerificationFailure,
    TResult Function()? otpResendSuccess,
    TResult Function(String error)? otpResendFailure,
    TResult Function()? passwordResetSuccess,
    TResult Function(String error)? passwordResetFailure,
    TResult Function()? passwordChangeSuccess,
    TResult Function(String error)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (otpVerificationFailure != null) {
      return otpVerificationFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordManagementInitialState value) initial,
    required TResult Function(PasswordManagementLoadingState value) loading,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordFailureState value)
        forgotPasswordFailure,
    required TResult Function(OtpVerificationSuccessState value)
        otpVerificationSuccess,
    required TResult Function(OtpVerificationFailureState value)
        otpVerificationFailure,
    required TResult Function(OtpResendSuccessState value) otpResendSuccess,
    required TResult Function(OtpResendFailureState value) otpResendFailure,
    required TResult Function(PasswordResetSuccessState value)
        passwordResetSuccess,
    required TResult Function(PasswordResetFailureState value)
        passwordResetFailure,
    required TResult Function(PasswordChangeSuccessState value)
        passwordChangeSuccess,
    required TResult Function(PasswordChangeFailureState value)
        passwordChangeFailure,
  }) {
    return otpVerificationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordManagementInitialState value)? initial,
    TResult? Function(PasswordManagementLoadingState value)? loading,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult? Function(OtpVerificationSuccessState value)?
        otpVerificationSuccess,
    TResult? Function(OtpVerificationFailureState value)?
        otpVerificationFailure,
    TResult? Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult? Function(OtpResendFailureState value)? otpResendFailure,
    TResult? Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult? Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult? Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult? Function(PasswordChangeFailureState value)? passwordChangeFailure,
  }) {
    return otpVerificationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordManagementInitialState value)? initial,
    TResult Function(PasswordManagementLoadingState value)? loading,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult Function(OtpVerificationSuccessState value)? otpVerificationSuccess,
    TResult Function(OtpVerificationFailureState value)? otpVerificationFailure,
    TResult Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult Function(OtpResendFailureState value)? otpResendFailure,
    TResult Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult Function(PasswordChangeFailureState value)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (otpVerificationFailure != null) {
      return otpVerificationFailure(this);
    }
    return orElse();
  }
}

abstract class OtpVerificationFailureState implements PasswordManagementState {
  const factory OtpVerificationFailureState(final String error) =
      _$OtpVerificationFailureStateImpl;

  String get error;

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpVerificationFailureStateImplCopyWith<_$OtpVerificationFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpResendSuccessStateImplCopyWith<$Res> {
  factory _$$OtpResendSuccessStateImplCopyWith(
          _$OtpResendSuccessStateImpl value,
          $Res Function(_$OtpResendSuccessStateImpl) then) =
      __$$OtpResendSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpResendSuccessStateImplCopyWithImpl<$Res>
    extends _$PasswordManagementStateCopyWithImpl<$Res,
        _$OtpResendSuccessStateImpl>
    implements _$$OtpResendSuccessStateImplCopyWith<$Res> {
  __$$OtpResendSuccessStateImplCopyWithImpl(_$OtpResendSuccessStateImpl _value,
      $Res Function(_$OtpResendSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OtpResendSuccessStateImpl implements OtpResendSuccessState {
  const _$OtpResendSuccessStateImpl();

  @override
  String toString() {
    return 'PasswordManagementState.otpResendSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpResendSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String error) forgotPasswordFailure,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String error) otpVerificationFailure,
    required TResult Function() otpResendSuccess,
    required TResult Function(String error) otpResendFailure,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String error) passwordResetFailure,
    required TResult Function() passwordChangeSuccess,
    required TResult Function(String error) passwordChangeFailure,
  }) {
    return otpResendSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String error)? forgotPasswordFailure,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String error)? otpVerificationFailure,
    TResult? Function()? otpResendSuccess,
    TResult? Function(String error)? otpResendFailure,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String error)? passwordResetFailure,
    TResult? Function()? passwordChangeSuccess,
    TResult? Function(String error)? passwordChangeFailure,
  }) {
    return otpResendSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String error)? forgotPasswordFailure,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String error)? otpVerificationFailure,
    TResult Function()? otpResendSuccess,
    TResult Function(String error)? otpResendFailure,
    TResult Function()? passwordResetSuccess,
    TResult Function(String error)? passwordResetFailure,
    TResult Function()? passwordChangeSuccess,
    TResult Function(String error)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (otpResendSuccess != null) {
      return otpResendSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordManagementInitialState value) initial,
    required TResult Function(PasswordManagementLoadingState value) loading,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordFailureState value)
        forgotPasswordFailure,
    required TResult Function(OtpVerificationSuccessState value)
        otpVerificationSuccess,
    required TResult Function(OtpVerificationFailureState value)
        otpVerificationFailure,
    required TResult Function(OtpResendSuccessState value) otpResendSuccess,
    required TResult Function(OtpResendFailureState value) otpResendFailure,
    required TResult Function(PasswordResetSuccessState value)
        passwordResetSuccess,
    required TResult Function(PasswordResetFailureState value)
        passwordResetFailure,
    required TResult Function(PasswordChangeSuccessState value)
        passwordChangeSuccess,
    required TResult Function(PasswordChangeFailureState value)
        passwordChangeFailure,
  }) {
    return otpResendSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordManagementInitialState value)? initial,
    TResult? Function(PasswordManagementLoadingState value)? loading,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult? Function(OtpVerificationSuccessState value)?
        otpVerificationSuccess,
    TResult? Function(OtpVerificationFailureState value)?
        otpVerificationFailure,
    TResult? Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult? Function(OtpResendFailureState value)? otpResendFailure,
    TResult? Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult? Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult? Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult? Function(PasswordChangeFailureState value)? passwordChangeFailure,
  }) {
    return otpResendSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordManagementInitialState value)? initial,
    TResult Function(PasswordManagementLoadingState value)? loading,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult Function(OtpVerificationSuccessState value)? otpVerificationSuccess,
    TResult Function(OtpVerificationFailureState value)? otpVerificationFailure,
    TResult Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult Function(OtpResendFailureState value)? otpResendFailure,
    TResult Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult Function(PasswordChangeFailureState value)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (otpResendSuccess != null) {
      return otpResendSuccess(this);
    }
    return orElse();
  }
}

abstract class OtpResendSuccessState implements PasswordManagementState {
  const factory OtpResendSuccessState() = _$OtpResendSuccessStateImpl;
}

/// @nodoc
abstract class _$$OtpResendFailureStateImplCopyWith<$Res> {
  factory _$$OtpResendFailureStateImplCopyWith(
          _$OtpResendFailureStateImpl value,
          $Res Function(_$OtpResendFailureStateImpl) then) =
      __$$OtpResendFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$OtpResendFailureStateImplCopyWithImpl<$Res>
    extends _$PasswordManagementStateCopyWithImpl<$Res,
        _$OtpResendFailureStateImpl>
    implements _$$OtpResendFailureStateImplCopyWith<$Res> {
  __$$OtpResendFailureStateImplCopyWithImpl(_$OtpResendFailureStateImpl _value,
      $Res Function(_$OtpResendFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OtpResendFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpResendFailureStateImpl implements OtpResendFailureState {
  const _$OtpResendFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'PasswordManagementState.otpResendFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpResendFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpResendFailureStateImplCopyWith<_$OtpResendFailureStateImpl>
      get copyWith => __$$OtpResendFailureStateImplCopyWithImpl<
          _$OtpResendFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String error) forgotPasswordFailure,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String error) otpVerificationFailure,
    required TResult Function() otpResendSuccess,
    required TResult Function(String error) otpResendFailure,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String error) passwordResetFailure,
    required TResult Function() passwordChangeSuccess,
    required TResult Function(String error) passwordChangeFailure,
  }) {
    return otpResendFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String error)? forgotPasswordFailure,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String error)? otpVerificationFailure,
    TResult? Function()? otpResendSuccess,
    TResult? Function(String error)? otpResendFailure,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String error)? passwordResetFailure,
    TResult? Function()? passwordChangeSuccess,
    TResult? Function(String error)? passwordChangeFailure,
  }) {
    return otpResendFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String error)? forgotPasswordFailure,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String error)? otpVerificationFailure,
    TResult Function()? otpResendSuccess,
    TResult Function(String error)? otpResendFailure,
    TResult Function()? passwordResetSuccess,
    TResult Function(String error)? passwordResetFailure,
    TResult Function()? passwordChangeSuccess,
    TResult Function(String error)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (otpResendFailure != null) {
      return otpResendFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordManagementInitialState value) initial,
    required TResult Function(PasswordManagementLoadingState value) loading,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordFailureState value)
        forgotPasswordFailure,
    required TResult Function(OtpVerificationSuccessState value)
        otpVerificationSuccess,
    required TResult Function(OtpVerificationFailureState value)
        otpVerificationFailure,
    required TResult Function(OtpResendSuccessState value) otpResendSuccess,
    required TResult Function(OtpResendFailureState value) otpResendFailure,
    required TResult Function(PasswordResetSuccessState value)
        passwordResetSuccess,
    required TResult Function(PasswordResetFailureState value)
        passwordResetFailure,
    required TResult Function(PasswordChangeSuccessState value)
        passwordChangeSuccess,
    required TResult Function(PasswordChangeFailureState value)
        passwordChangeFailure,
  }) {
    return otpResendFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordManagementInitialState value)? initial,
    TResult? Function(PasswordManagementLoadingState value)? loading,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult? Function(OtpVerificationSuccessState value)?
        otpVerificationSuccess,
    TResult? Function(OtpVerificationFailureState value)?
        otpVerificationFailure,
    TResult? Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult? Function(OtpResendFailureState value)? otpResendFailure,
    TResult? Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult? Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult? Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult? Function(PasswordChangeFailureState value)? passwordChangeFailure,
  }) {
    return otpResendFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordManagementInitialState value)? initial,
    TResult Function(PasswordManagementLoadingState value)? loading,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult Function(OtpVerificationSuccessState value)? otpVerificationSuccess,
    TResult Function(OtpVerificationFailureState value)? otpVerificationFailure,
    TResult Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult Function(OtpResendFailureState value)? otpResendFailure,
    TResult Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult Function(PasswordChangeFailureState value)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (otpResendFailure != null) {
      return otpResendFailure(this);
    }
    return orElse();
  }
}

abstract class OtpResendFailureState implements PasswordManagementState {
  const factory OtpResendFailureState(final String error) =
      _$OtpResendFailureStateImpl;

  String get error;

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpResendFailureStateImplCopyWith<_$OtpResendFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordResetSuccessStateImplCopyWith<$Res> {
  factory _$$PasswordResetSuccessStateImplCopyWith(
          _$PasswordResetSuccessStateImpl value,
          $Res Function(_$PasswordResetSuccessStateImpl) then) =
      __$$PasswordResetSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordResetSuccessStateImplCopyWithImpl<$Res>
    extends _$PasswordManagementStateCopyWithImpl<$Res,
        _$PasswordResetSuccessStateImpl>
    implements _$$PasswordResetSuccessStateImplCopyWith<$Res> {
  __$$PasswordResetSuccessStateImplCopyWithImpl(
      _$PasswordResetSuccessStateImpl _value,
      $Res Function(_$PasswordResetSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PasswordResetSuccessStateImpl implements PasswordResetSuccessState {
  const _$PasswordResetSuccessStateImpl();

  @override
  String toString() {
    return 'PasswordManagementState.passwordResetSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String error) forgotPasswordFailure,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String error) otpVerificationFailure,
    required TResult Function() otpResendSuccess,
    required TResult Function(String error) otpResendFailure,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String error) passwordResetFailure,
    required TResult Function() passwordChangeSuccess,
    required TResult Function(String error) passwordChangeFailure,
  }) {
    return passwordResetSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String error)? forgotPasswordFailure,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String error)? otpVerificationFailure,
    TResult? Function()? otpResendSuccess,
    TResult? Function(String error)? otpResendFailure,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String error)? passwordResetFailure,
    TResult? Function()? passwordChangeSuccess,
    TResult? Function(String error)? passwordChangeFailure,
  }) {
    return passwordResetSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String error)? forgotPasswordFailure,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String error)? otpVerificationFailure,
    TResult Function()? otpResendSuccess,
    TResult Function(String error)? otpResendFailure,
    TResult Function()? passwordResetSuccess,
    TResult Function(String error)? passwordResetFailure,
    TResult Function()? passwordChangeSuccess,
    TResult Function(String error)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (passwordResetSuccess != null) {
      return passwordResetSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordManagementInitialState value) initial,
    required TResult Function(PasswordManagementLoadingState value) loading,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordFailureState value)
        forgotPasswordFailure,
    required TResult Function(OtpVerificationSuccessState value)
        otpVerificationSuccess,
    required TResult Function(OtpVerificationFailureState value)
        otpVerificationFailure,
    required TResult Function(OtpResendSuccessState value) otpResendSuccess,
    required TResult Function(OtpResendFailureState value) otpResendFailure,
    required TResult Function(PasswordResetSuccessState value)
        passwordResetSuccess,
    required TResult Function(PasswordResetFailureState value)
        passwordResetFailure,
    required TResult Function(PasswordChangeSuccessState value)
        passwordChangeSuccess,
    required TResult Function(PasswordChangeFailureState value)
        passwordChangeFailure,
  }) {
    return passwordResetSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordManagementInitialState value)? initial,
    TResult? Function(PasswordManagementLoadingState value)? loading,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult? Function(OtpVerificationSuccessState value)?
        otpVerificationSuccess,
    TResult? Function(OtpVerificationFailureState value)?
        otpVerificationFailure,
    TResult? Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult? Function(OtpResendFailureState value)? otpResendFailure,
    TResult? Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult? Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult? Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult? Function(PasswordChangeFailureState value)? passwordChangeFailure,
  }) {
    return passwordResetSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordManagementInitialState value)? initial,
    TResult Function(PasswordManagementLoadingState value)? loading,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult Function(OtpVerificationSuccessState value)? otpVerificationSuccess,
    TResult Function(OtpVerificationFailureState value)? otpVerificationFailure,
    TResult Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult Function(OtpResendFailureState value)? otpResendFailure,
    TResult Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult Function(PasswordChangeFailureState value)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (passwordResetSuccess != null) {
      return passwordResetSuccess(this);
    }
    return orElse();
  }
}

abstract class PasswordResetSuccessState implements PasswordManagementState {
  const factory PasswordResetSuccessState() = _$PasswordResetSuccessStateImpl;
}

/// @nodoc
abstract class _$$PasswordResetFailureStateImplCopyWith<$Res> {
  factory _$$PasswordResetFailureStateImplCopyWith(
          _$PasswordResetFailureStateImpl value,
          $Res Function(_$PasswordResetFailureStateImpl) then) =
      __$$PasswordResetFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PasswordResetFailureStateImplCopyWithImpl<$Res>
    extends _$PasswordManagementStateCopyWithImpl<$Res,
        _$PasswordResetFailureStateImpl>
    implements _$$PasswordResetFailureStateImplCopyWith<$Res> {
  __$$PasswordResetFailureStateImplCopyWithImpl(
      _$PasswordResetFailureStateImpl _value,
      $Res Function(_$PasswordResetFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PasswordResetFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordResetFailureStateImpl implements PasswordResetFailureState {
  const _$PasswordResetFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'PasswordManagementState.passwordResetFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordResetFailureStateImplCopyWith<_$PasswordResetFailureStateImpl>
      get copyWith => __$$PasswordResetFailureStateImplCopyWithImpl<
          _$PasswordResetFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String error) forgotPasswordFailure,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String error) otpVerificationFailure,
    required TResult Function() otpResendSuccess,
    required TResult Function(String error) otpResendFailure,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String error) passwordResetFailure,
    required TResult Function() passwordChangeSuccess,
    required TResult Function(String error) passwordChangeFailure,
  }) {
    return passwordResetFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String error)? forgotPasswordFailure,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String error)? otpVerificationFailure,
    TResult? Function()? otpResendSuccess,
    TResult? Function(String error)? otpResendFailure,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String error)? passwordResetFailure,
    TResult? Function()? passwordChangeSuccess,
    TResult? Function(String error)? passwordChangeFailure,
  }) {
    return passwordResetFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String error)? forgotPasswordFailure,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String error)? otpVerificationFailure,
    TResult Function()? otpResendSuccess,
    TResult Function(String error)? otpResendFailure,
    TResult Function()? passwordResetSuccess,
    TResult Function(String error)? passwordResetFailure,
    TResult Function()? passwordChangeSuccess,
    TResult Function(String error)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (passwordResetFailure != null) {
      return passwordResetFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordManagementInitialState value) initial,
    required TResult Function(PasswordManagementLoadingState value) loading,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordFailureState value)
        forgotPasswordFailure,
    required TResult Function(OtpVerificationSuccessState value)
        otpVerificationSuccess,
    required TResult Function(OtpVerificationFailureState value)
        otpVerificationFailure,
    required TResult Function(OtpResendSuccessState value) otpResendSuccess,
    required TResult Function(OtpResendFailureState value) otpResendFailure,
    required TResult Function(PasswordResetSuccessState value)
        passwordResetSuccess,
    required TResult Function(PasswordResetFailureState value)
        passwordResetFailure,
    required TResult Function(PasswordChangeSuccessState value)
        passwordChangeSuccess,
    required TResult Function(PasswordChangeFailureState value)
        passwordChangeFailure,
  }) {
    return passwordResetFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordManagementInitialState value)? initial,
    TResult? Function(PasswordManagementLoadingState value)? loading,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult? Function(OtpVerificationSuccessState value)?
        otpVerificationSuccess,
    TResult? Function(OtpVerificationFailureState value)?
        otpVerificationFailure,
    TResult? Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult? Function(OtpResendFailureState value)? otpResendFailure,
    TResult? Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult? Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult? Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult? Function(PasswordChangeFailureState value)? passwordChangeFailure,
  }) {
    return passwordResetFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordManagementInitialState value)? initial,
    TResult Function(PasswordManagementLoadingState value)? loading,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult Function(OtpVerificationSuccessState value)? otpVerificationSuccess,
    TResult Function(OtpVerificationFailureState value)? otpVerificationFailure,
    TResult Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult Function(OtpResendFailureState value)? otpResendFailure,
    TResult Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult Function(PasswordChangeFailureState value)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (passwordResetFailure != null) {
      return passwordResetFailure(this);
    }
    return orElse();
  }
}

abstract class PasswordResetFailureState implements PasswordManagementState {
  const factory PasswordResetFailureState(final String error) =
      _$PasswordResetFailureStateImpl;

  String get error;

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordResetFailureStateImplCopyWith<_$PasswordResetFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangeSuccessStateImplCopyWith<$Res> {
  factory _$$PasswordChangeSuccessStateImplCopyWith(
          _$PasswordChangeSuccessStateImpl value,
          $Res Function(_$PasswordChangeSuccessStateImpl) then) =
      __$$PasswordChangeSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordChangeSuccessStateImplCopyWithImpl<$Res>
    extends _$PasswordManagementStateCopyWithImpl<$Res,
        _$PasswordChangeSuccessStateImpl>
    implements _$$PasswordChangeSuccessStateImplCopyWith<$Res> {
  __$$PasswordChangeSuccessStateImplCopyWithImpl(
      _$PasswordChangeSuccessStateImpl _value,
      $Res Function(_$PasswordChangeSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PasswordChangeSuccessStateImpl implements PasswordChangeSuccessState {
  const _$PasswordChangeSuccessStateImpl();

  @override
  String toString() {
    return 'PasswordManagementState.passwordChangeSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangeSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String error) forgotPasswordFailure,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String error) otpVerificationFailure,
    required TResult Function() otpResendSuccess,
    required TResult Function(String error) otpResendFailure,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String error) passwordResetFailure,
    required TResult Function() passwordChangeSuccess,
    required TResult Function(String error) passwordChangeFailure,
  }) {
    return passwordChangeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String error)? forgotPasswordFailure,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String error)? otpVerificationFailure,
    TResult? Function()? otpResendSuccess,
    TResult? Function(String error)? otpResendFailure,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String error)? passwordResetFailure,
    TResult? Function()? passwordChangeSuccess,
    TResult? Function(String error)? passwordChangeFailure,
  }) {
    return passwordChangeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String error)? forgotPasswordFailure,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String error)? otpVerificationFailure,
    TResult Function()? otpResendSuccess,
    TResult Function(String error)? otpResendFailure,
    TResult Function()? passwordResetSuccess,
    TResult Function(String error)? passwordResetFailure,
    TResult Function()? passwordChangeSuccess,
    TResult Function(String error)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (passwordChangeSuccess != null) {
      return passwordChangeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordManagementInitialState value) initial,
    required TResult Function(PasswordManagementLoadingState value) loading,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordFailureState value)
        forgotPasswordFailure,
    required TResult Function(OtpVerificationSuccessState value)
        otpVerificationSuccess,
    required TResult Function(OtpVerificationFailureState value)
        otpVerificationFailure,
    required TResult Function(OtpResendSuccessState value) otpResendSuccess,
    required TResult Function(OtpResendFailureState value) otpResendFailure,
    required TResult Function(PasswordResetSuccessState value)
        passwordResetSuccess,
    required TResult Function(PasswordResetFailureState value)
        passwordResetFailure,
    required TResult Function(PasswordChangeSuccessState value)
        passwordChangeSuccess,
    required TResult Function(PasswordChangeFailureState value)
        passwordChangeFailure,
  }) {
    return passwordChangeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordManagementInitialState value)? initial,
    TResult? Function(PasswordManagementLoadingState value)? loading,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult? Function(OtpVerificationSuccessState value)?
        otpVerificationSuccess,
    TResult? Function(OtpVerificationFailureState value)?
        otpVerificationFailure,
    TResult? Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult? Function(OtpResendFailureState value)? otpResendFailure,
    TResult? Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult? Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult? Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult? Function(PasswordChangeFailureState value)? passwordChangeFailure,
  }) {
    return passwordChangeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordManagementInitialState value)? initial,
    TResult Function(PasswordManagementLoadingState value)? loading,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult Function(OtpVerificationSuccessState value)? otpVerificationSuccess,
    TResult Function(OtpVerificationFailureState value)? otpVerificationFailure,
    TResult Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult Function(OtpResendFailureState value)? otpResendFailure,
    TResult Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult Function(PasswordChangeFailureState value)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (passwordChangeSuccess != null) {
      return passwordChangeSuccess(this);
    }
    return orElse();
  }
}

abstract class PasswordChangeSuccessState implements PasswordManagementState {
  const factory PasswordChangeSuccessState() = _$PasswordChangeSuccessStateImpl;
}

/// @nodoc
abstract class _$$PasswordChangeFailureStateImplCopyWith<$Res> {
  factory _$$PasswordChangeFailureStateImplCopyWith(
          _$PasswordChangeFailureStateImpl value,
          $Res Function(_$PasswordChangeFailureStateImpl) then) =
      __$$PasswordChangeFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PasswordChangeFailureStateImplCopyWithImpl<$Res>
    extends _$PasswordManagementStateCopyWithImpl<$Res,
        _$PasswordChangeFailureStateImpl>
    implements _$$PasswordChangeFailureStateImplCopyWith<$Res> {
  __$$PasswordChangeFailureStateImplCopyWithImpl(
      _$PasswordChangeFailureStateImpl _value,
      $Res Function(_$PasswordChangeFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PasswordChangeFailureStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangeFailureStateImpl implements PasswordChangeFailureState {
  const _$PasswordChangeFailureStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'PasswordManagementState.passwordChangeFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangeFailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangeFailureStateImplCopyWith<_$PasswordChangeFailureStateImpl>
      get copyWith => __$$PasswordChangeFailureStateImplCopyWithImpl<
          _$PasswordChangeFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String error) forgotPasswordFailure,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String error) otpVerificationFailure,
    required TResult Function() otpResendSuccess,
    required TResult Function(String error) otpResendFailure,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String error) passwordResetFailure,
    required TResult Function() passwordChangeSuccess,
    required TResult Function(String error) passwordChangeFailure,
  }) {
    return passwordChangeFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String error)? forgotPasswordFailure,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String error)? otpVerificationFailure,
    TResult? Function()? otpResendSuccess,
    TResult? Function(String error)? otpResendFailure,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String error)? passwordResetFailure,
    TResult? Function()? passwordChangeSuccess,
    TResult? Function(String error)? passwordChangeFailure,
  }) {
    return passwordChangeFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String error)? forgotPasswordFailure,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String error)? otpVerificationFailure,
    TResult Function()? otpResendSuccess,
    TResult Function(String error)? otpResendFailure,
    TResult Function()? passwordResetSuccess,
    TResult Function(String error)? passwordResetFailure,
    TResult Function()? passwordChangeSuccess,
    TResult Function(String error)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (passwordChangeFailure != null) {
      return passwordChangeFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordManagementInitialState value) initial,
    required TResult Function(PasswordManagementLoadingState value) loading,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
    required TResult Function(ForgotPasswordFailureState value)
        forgotPasswordFailure,
    required TResult Function(OtpVerificationSuccessState value)
        otpVerificationSuccess,
    required TResult Function(OtpVerificationFailureState value)
        otpVerificationFailure,
    required TResult Function(OtpResendSuccessState value) otpResendSuccess,
    required TResult Function(OtpResendFailureState value) otpResendFailure,
    required TResult Function(PasswordResetSuccessState value)
        passwordResetSuccess,
    required TResult Function(PasswordResetFailureState value)
        passwordResetFailure,
    required TResult Function(PasswordChangeSuccessState value)
        passwordChangeSuccess,
    required TResult Function(PasswordChangeFailureState value)
        passwordChangeFailure,
  }) {
    return passwordChangeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordManagementInitialState value)? initial,
    TResult? Function(PasswordManagementLoadingState value)? loading,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult? Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult? Function(OtpVerificationSuccessState value)?
        otpVerificationSuccess,
    TResult? Function(OtpVerificationFailureState value)?
        otpVerificationFailure,
    TResult? Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult? Function(OtpResendFailureState value)? otpResendFailure,
    TResult? Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult? Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult? Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult? Function(PasswordChangeFailureState value)? passwordChangeFailure,
  }) {
    return passwordChangeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordManagementInitialState value)? initial,
    TResult Function(PasswordManagementLoadingState value)? loading,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    TResult Function(ForgotPasswordFailureState value)? forgotPasswordFailure,
    TResult Function(OtpVerificationSuccessState value)? otpVerificationSuccess,
    TResult Function(OtpVerificationFailureState value)? otpVerificationFailure,
    TResult Function(OtpResendSuccessState value)? otpResendSuccess,
    TResult Function(OtpResendFailureState value)? otpResendFailure,
    TResult Function(PasswordResetSuccessState value)? passwordResetSuccess,
    TResult Function(PasswordResetFailureState value)? passwordResetFailure,
    TResult Function(PasswordChangeSuccessState value)? passwordChangeSuccess,
    TResult Function(PasswordChangeFailureState value)? passwordChangeFailure,
    required TResult orElse(),
  }) {
    if (passwordChangeFailure != null) {
      return passwordChangeFailure(this);
    }
    return orElse();
  }
}

abstract class PasswordChangeFailureState implements PasswordManagementState {
  const factory PasswordChangeFailureState(final String error) =
      _$PasswordChangeFailureStateImpl;

  String get error;

  /// Create a copy of PasswordManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangeFailureStateImplCopyWith<_$PasswordChangeFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
