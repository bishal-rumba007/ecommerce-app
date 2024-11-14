// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_sale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlashSaleEvent {
  String? get selectedCountry => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) fetchedFlashSale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? fetchedFlashSale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? fetchedFlashSale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchedFlashSale value) fetchedFlashSale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchedFlashSale value)? fetchedFlashSale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchedFlashSale value)? fetchedFlashSale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of FlashSaleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashSaleEventCopyWith<FlashSaleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashSaleEventCopyWith<$Res> {
  factory $FlashSaleEventCopyWith(
          FlashSaleEvent value, $Res Function(FlashSaleEvent) then) =
      _$FlashSaleEventCopyWithImpl<$Res, FlashSaleEvent>;
  @useResult
  $Res call({String? selectedCountry});
}

/// @nodoc
class _$FlashSaleEventCopyWithImpl<$Res, $Val extends FlashSaleEvent>
    implements $FlashSaleEventCopyWith<$Res> {
  _$FlashSaleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashSaleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCountry = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCountry: freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchedFlashSaleImplCopyWith<$Res>
    implements $FlashSaleEventCopyWith<$Res> {
  factory _$$FetchedFlashSaleImplCopyWith(_$FetchedFlashSaleImpl value,
          $Res Function(_$FetchedFlashSaleImpl) then) =
      __$$FetchedFlashSaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? selectedCountry});
}

/// @nodoc
class __$$FetchedFlashSaleImplCopyWithImpl<$Res>
    extends _$FlashSaleEventCopyWithImpl<$Res, _$FetchedFlashSaleImpl>
    implements _$$FetchedFlashSaleImplCopyWith<$Res> {
  __$$FetchedFlashSaleImplCopyWithImpl(_$FetchedFlashSaleImpl _value,
      $Res Function(_$FetchedFlashSaleImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashSaleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCountry = freezed,
  }) {
    return _then(_$FetchedFlashSaleImpl(
      freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchedFlashSaleImpl implements FetchedFlashSale {
  const _$FetchedFlashSaleImpl(this.selectedCountry);

  @override
  final String? selectedCountry;

  @override
  String toString() {
    return 'FlashSaleEvent.fetchedFlashSale(selectedCountry: $selectedCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedFlashSaleImpl &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCountry);

  /// Create a copy of FlashSaleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedFlashSaleImplCopyWith<_$FetchedFlashSaleImpl> get copyWith =>
      __$$FetchedFlashSaleImplCopyWithImpl<_$FetchedFlashSaleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) fetchedFlashSale,
  }) {
    return fetchedFlashSale(selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? fetchedFlashSale,
  }) {
    return fetchedFlashSale?.call(selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? fetchedFlashSale,
    required TResult orElse(),
  }) {
    if (fetchedFlashSale != null) {
      return fetchedFlashSale(selectedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchedFlashSale value) fetchedFlashSale,
  }) {
    return fetchedFlashSale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchedFlashSale value)? fetchedFlashSale,
  }) {
    return fetchedFlashSale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchedFlashSale value)? fetchedFlashSale,
    required TResult orElse(),
  }) {
    if (fetchedFlashSale != null) {
      return fetchedFlashSale(this);
    }
    return orElse();
  }
}

abstract class FetchedFlashSale implements FlashSaleEvent {
  const factory FetchedFlashSale(final String? selectedCountry) =
      _$FetchedFlashSaleImpl;

  @override
  String? get selectedCountry;

  /// Create a copy of FlashSaleEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedFlashSaleImplCopyWith<_$FetchedFlashSaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FlashSaleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FlashSale> flashSales) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FlashSale> flashSales)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FlashSale> flashSales)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashSaleStateCopyWith<$Res> {
  factory $FlashSaleStateCopyWith(
          FlashSaleState value, $Res Function(FlashSaleState) then) =
      _$FlashSaleStateCopyWithImpl<$Res, FlashSaleState>;
}

/// @nodoc
class _$FlashSaleStateCopyWithImpl<$Res, $Val extends FlashSaleState>
    implements $FlashSaleStateCopyWith<$Res> {
  _$FlashSaleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashSaleState
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
    extends _$FlashSaleStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashSaleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FlashSaleState.initial()';
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
    required TResult Function(List<FlashSale> flashSales) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FlashSale> flashSales)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FlashSale> flashSales)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FlashSaleState {
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
    extends _$FlashSaleStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashSaleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FlashSaleState.loading()';
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
    required TResult Function(List<FlashSale> flashSales) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FlashSale> flashSales)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FlashSale> flashSales)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FlashSaleState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FlashSale> flashSales});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$FlashSaleStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashSaleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashSales = null,
  }) {
    return _then(_$LoadedImpl(
      null == flashSales
          ? _value._flashSales
          : flashSales // ignore: cast_nullable_to_non_nullable
              as List<FlashSale>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<FlashSale> flashSales)
      : _flashSales = flashSales;

  final List<FlashSale> _flashSales;
  @override
  List<FlashSale> get flashSales {
    if (_flashSales is EqualUnmodifiableListView) return _flashSales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flashSales);
  }

  @override
  String toString() {
    return 'FlashSaleState.loaded(flashSales: $flashSales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._flashSales, _flashSales));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_flashSales));

  /// Create a copy of FlashSaleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FlashSale> flashSales) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(flashSales);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FlashSale> flashSales)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(flashSales);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FlashSale> flashSales)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(flashSales);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FlashSaleState {
  const factory _Loaded(final List<FlashSale> flashSales) = _$LoadedImpl;

  List<FlashSale> get flashSales;

  /// Create a copy of FlashSaleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$FlashSaleStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashSaleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FlashSaleState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FlashSaleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FlashSale> flashSales) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FlashSale> flashSales)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FlashSale> flashSales)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FlashSaleState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of FlashSaleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
