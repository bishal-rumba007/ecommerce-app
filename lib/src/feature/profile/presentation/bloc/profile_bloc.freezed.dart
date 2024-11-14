// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserInfo,
    required TResult Function(EditUserInfoParams userUpdateParams)
        updateUserInfo,
    required TResult Function(String password) deleteUser,
    required TResult Function(ChangePasswordParams params) updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserInfo,
    TResult? Function(EditUserInfoParams userUpdateParams)? updateUserInfo,
    TResult? Function(String password)? deleteUser,
    TResult? Function(ChangePasswordParams params)? updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserInfo,
    TResult Function(EditUserInfoParams userUpdateParams)? updateUserInfo,
    TResult Function(String password)? deleteUser,
    TResult Function(ChangePasswordParams params)? updatePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(UpdatePassword value) updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(UpdatePassword value)? updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserInfoImplCopyWith<$Res> {
  factory _$$GetUserInfoImplCopyWith(
          _$GetUserInfoImpl value, $Res Function(_$GetUserInfoImpl) then) =
      __$$GetUserInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserInfoImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetUserInfoImpl>
    implements _$$GetUserInfoImplCopyWith<$Res> {
  __$$GetUserInfoImplCopyWithImpl(
      _$GetUserInfoImpl _value, $Res Function(_$GetUserInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserInfoImpl implements GetUserInfo {
  const _$GetUserInfoImpl();

  @override
  String toString() {
    return 'ProfileEvent.getUserInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserInfo,
    required TResult Function(EditUserInfoParams userUpdateParams)
        updateUserInfo,
    required TResult Function(String password) deleteUser,
    required TResult Function(ChangePasswordParams params) updatePassword,
  }) {
    return getUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserInfo,
    TResult? Function(EditUserInfoParams userUpdateParams)? updateUserInfo,
    TResult? Function(String password)? deleteUser,
    TResult? Function(ChangePasswordParams params)? updatePassword,
  }) {
    return getUserInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserInfo,
    TResult Function(EditUserInfoParams userUpdateParams)? updateUserInfo,
    TResult Function(String password)? deleteUser,
    TResult Function(ChangePasswordParams params)? updatePassword,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(UpdatePassword value) updatePassword,
  }) {
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(UpdatePassword value)? updatePassword,
  }) {
    return getUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(this);
    }
    return orElse();
  }
}

abstract class GetUserInfo implements ProfileEvent {
  const factory GetUserInfo() = _$GetUserInfoImpl;
}

/// @nodoc
abstract class _$$UpdateUserInfoImplCopyWith<$Res> {
  factory _$$UpdateUserInfoImplCopyWith(_$UpdateUserInfoImpl value,
          $Res Function(_$UpdateUserInfoImpl) then) =
      __$$UpdateUserInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EditUserInfoParams userUpdateParams});
}

/// @nodoc
class __$$UpdateUserInfoImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateUserInfoImpl>
    implements _$$UpdateUserInfoImplCopyWith<$Res> {
  __$$UpdateUserInfoImplCopyWithImpl(
      _$UpdateUserInfoImpl _value, $Res Function(_$UpdateUserInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUpdateParams = null,
  }) {
    return _then(_$UpdateUserInfoImpl(
      userUpdateParams: null == userUpdateParams
          ? _value.userUpdateParams
          : userUpdateParams // ignore: cast_nullable_to_non_nullable
              as EditUserInfoParams,
    ));
  }
}

/// @nodoc

class _$UpdateUserInfoImpl implements UpdateUserInfo {
  const _$UpdateUserInfoImpl({required this.userUpdateParams});

  @override
  final EditUserInfoParams userUpdateParams;

  @override
  String toString() {
    return 'ProfileEvent.updateUserInfo(userUpdateParams: $userUpdateParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserInfoImpl &&
            (identical(other.userUpdateParams, userUpdateParams) ||
                other.userUpdateParams == userUpdateParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUpdateParams);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserInfoImplCopyWith<_$UpdateUserInfoImpl> get copyWith =>
      __$$UpdateUserInfoImplCopyWithImpl<_$UpdateUserInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserInfo,
    required TResult Function(EditUserInfoParams userUpdateParams)
        updateUserInfo,
    required TResult Function(String password) deleteUser,
    required TResult Function(ChangePasswordParams params) updatePassword,
  }) {
    return updateUserInfo(userUpdateParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserInfo,
    TResult? Function(EditUserInfoParams userUpdateParams)? updateUserInfo,
    TResult? Function(String password)? deleteUser,
    TResult? Function(ChangePasswordParams params)? updatePassword,
  }) {
    return updateUserInfo?.call(userUpdateParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserInfo,
    TResult Function(EditUserInfoParams userUpdateParams)? updateUserInfo,
    TResult Function(String password)? deleteUser,
    TResult Function(ChangePasswordParams params)? updatePassword,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(userUpdateParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(UpdatePassword value) updatePassword,
  }) {
    return updateUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(UpdatePassword value)? updatePassword,
  }) {
    return updateUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(this);
    }
    return orElse();
  }
}

abstract class UpdateUserInfo implements ProfileEvent {
  const factory UpdateUserInfo(
          {required final EditUserInfoParams userUpdateParams}) =
      _$UpdateUserInfoImpl;

  EditUserInfoParams get userUpdateParams;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserInfoImplCopyWith<_$UpdateUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteUserImplCopyWith<$Res> {
  factory _$$DeleteUserImplCopyWith(
          _$DeleteUserImpl value, $Res Function(_$DeleteUserImpl) then) =
      __$$DeleteUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$DeleteUserImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$DeleteUserImpl>
    implements _$$DeleteUserImplCopyWith<$Res> {
  __$$DeleteUserImplCopyWithImpl(
      _$DeleteUserImpl _value, $Res Function(_$DeleteUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$DeleteUserImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteUserImpl implements DeleteUser {
  const _$DeleteUserImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'ProfileEvent.deleteUser(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      __$$DeleteUserImplCopyWithImpl<_$DeleteUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserInfo,
    required TResult Function(EditUserInfoParams userUpdateParams)
        updateUserInfo,
    required TResult Function(String password) deleteUser,
    required TResult Function(ChangePasswordParams params) updatePassword,
  }) {
    return deleteUser(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserInfo,
    TResult? Function(EditUserInfoParams userUpdateParams)? updateUserInfo,
    TResult? Function(String password)? deleteUser,
    TResult? Function(ChangePasswordParams params)? updatePassword,
  }) {
    return deleteUser?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserInfo,
    TResult Function(EditUserInfoParams userUpdateParams)? updateUserInfo,
    TResult Function(String password)? deleteUser,
    TResult Function(ChangePasswordParams params)? updatePassword,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(UpdatePassword value) updatePassword,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(UpdatePassword value)? updatePassword,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUser implements ProfileEvent {
  const factory DeleteUser({required final String password}) = _$DeleteUserImpl;

  String get password;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePasswordImplCopyWith<$Res> {
  factory _$$UpdatePasswordImplCopyWith(_$UpdatePasswordImpl value,
          $Res Function(_$UpdatePasswordImpl) then) =
      __$$UpdatePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChangePasswordParams params});
}

/// @nodoc
class __$$UpdatePasswordImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdatePasswordImpl>
    implements _$$UpdatePasswordImplCopyWith<$Res> {
  __$$UpdatePasswordImplCopyWithImpl(
      _$UpdatePasswordImpl _value, $Res Function(_$UpdatePasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$UpdatePasswordImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ChangePasswordParams,
    ));
  }
}

/// @nodoc

class _$UpdatePasswordImpl implements UpdatePassword {
  const _$UpdatePasswordImpl({required this.params});

  @override
  final ChangePasswordParams params;

  @override
  String toString() {
    return 'ProfileEvent.updatePassword(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      __$$UpdatePasswordImplCopyWithImpl<_$UpdatePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserInfo,
    required TResult Function(EditUserInfoParams userUpdateParams)
        updateUserInfo,
    required TResult Function(String password) deleteUser,
    required TResult Function(ChangePasswordParams params) updatePassword,
  }) {
    return updatePassword(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserInfo,
    TResult? Function(EditUserInfoParams userUpdateParams)? updateUserInfo,
    TResult? Function(String password)? deleteUser,
    TResult? Function(ChangePasswordParams params)? updatePassword,
  }) {
    return updatePassword?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserInfo,
    TResult Function(EditUserInfoParams userUpdateParams)? updateUserInfo,
    TResult Function(String password)? deleteUser,
    TResult Function(ChangePasswordParams params)? updatePassword,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUserInfo value) updateUserInfo,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(UpdatePassword value) updatePassword,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUserInfo value)? updateUserInfo,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(UpdatePassword value)? updatePassword,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUserInfo value)? updateUserInfo,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class UpdatePassword implements ProfileEvent {
  const factory UpdatePassword({required final ChangePasswordParams params}) =
      _$UpdatePasswordImpl;

  ChangePasswordParams get params;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
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
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProfileState.initial()';
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
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
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
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
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
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProfileState {
  const factory _Loading() = _$LoadingImpl;
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
    extends _$ProfileStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.success(message: $message)';
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

  /// Create a copy of ProfileState
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
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ProfileState {
  const factory _Success({required final String message}) = _$SuccessImpl;

  String get message;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failed implements ProfileState {
  const factory _Failed({required final String message}) = _$FailedImpl;

  String get message;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
