// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CountryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Country selectedCountry) setCountryPreference,
    required TResult Function() fetchedCountryPreference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Country selectedCountry)? setCountryPreference,
    TResult? Function()? fetchedCountryPreference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Country selectedCountry)? setCountryPreference,
    TResult Function()? fetchedCountryPreference,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetCountryPreference value) setCountryPreference,
    required TResult Function(FetchedCountryPreference value)
        fetchedCountryPreference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetCountryPreference value)? setCountryPreference,
    TResult? Function(FetchedCountryPreference value)? fetchedCountryPreference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetCountryPreference value)? setCountryPreference,
    TResult Function(FetchedCountryPreference value)? fetchedCountryPreference,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryEventCopyWith<$Res> {
  factory $CountryEventCopyWith(
          CountryEvent value, $Res Function(CountryEvent) then) =
      _$CountryEventCopyWithImpl<$Res, CountryEvent>;
}

/// @nodoc
class _$CountryEventCopyWithImpl<$Res, $Val extends CountryEvent>
    implements $CountryEventCopyWith<$Res> {
  _$CountryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetCountryPreferenceImplCopyWith<$Res> {
  factory _$$SetCountryPreferenceImplCopyWith(_$SetCountryPreferenceImpl value,
          $Res Function(_$SetCountryPreferenceImpl) then) =
      __$$SetCountryPreferenceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Country selectedCountry});
}

/// @nodoc
class __$$SetCountryPreferenceImplCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$SetCountryPreferenceImpl>
    implements _$$SetCountryPreferenceImplCopyWith<$Res> {
  __$$SetCountryPreferenceImplCopyWithImpl(_$SetCountryPreferenceImpl _value,
      $Res Function(_$SetCountryPreferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCountry = null,
  }) {
    return _then(_$SetCountryPreferenceImpl(
      null == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }
}

/// @nodoc

class _$SetCountryPreferenceImpl implements SetCountryPreference {
  const _$SetCountryPreferenceImpl(this.selectedCountry);

  @override
  final Country selectedCountry;

  @override
  String toString() {
    return 'CountryEvent.setCountryPreference(selectedCountry: $selectedCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCountryPreferenceImpl &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCountry);

  /// Create a copy of CountryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCountryPreferenceImplCopyWith<_$SetCountryPreferenceImpl>
      get copyWith =>
          __$$SetCountryPreferenceImplCopyWithImpl<_$SetCountryPreferenceImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Country selectedCountry) setCountryPreference,
    required TResult Function() fetchedCountryPreference,
  }) {
    return setCountryPreference(selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Country selectedCountry)? setCountryPreference,
    TResult? Function()? fetchedCountryPreference,
  }) {
    return setCountryPreference?.call(selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Country selectedCountry)? setCountryPreference,
    TResult Function()? fetchedCountryPreference,
    required TResult orElse(),
  }) {
    if (setCountryPreference != null) {
      return setCountryPreference(selectedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetCountryPreference value) setCountryPreference,
    required TResult Function(FetchedCountryPreference value)
        fetchedCountryPreference,
  }) {
    return setCountryPreference(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetCountryPreference value)? setCountryPreference,
    TResult? Function(FetchedCountryPreference value)? fetchedCountryPreference,
  }) {
    return setCountryPreference?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetCountryPreference value)? setCountryPreference,
    TResult Function(FetchedCountryPreference value)? fetchedCountryPreference,
    required TResult orElse(),
  }) {
    if (setCountryPreference != null) {
      return setCountryPreference(this);
    }
    return orElse();
  }
}

abstract class SetCountryPreference implements CountryEvent {
  const factory SetCountryPreference(final Country selectedCountry) =
      _$SetCountryPreferenceImpl;

  Country get selectedCountry;

  /// Create a copy of CountryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCountryPreferenceImplCopyWith<_$SetCountryPreferenceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchedCountryPreferenceImplCopyWith<$Res> {
  factory _$$FetchedCountryPreferenceImplCopyWith(
          _$FetchedCountryPreferenceImpl value,
          $Res Function(_$FetchedCountryPreferenceImpl) then) =
      __$$FetchedCountryPreferenceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchedCountryPreferenceImplCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$FetchedCountryPreferenceImpl>
    implements _$$FetchedCountryPreferenceImplCopyWith<$Res> {
  __$$FetchedCountryPreferenceImplCopyWithImpl(
      _$FetchedCountryPreferenceImpl _value,
      $Res Function(_$FetchedCountryPreferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchedCountryPreferenceImpl implements FetchedCountryPreference {
  const _$FetchedCountryPreferenceImpl();

  @override
  String toString() {
    return 'CountryEvent.fetchedCountryPreference()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedCountryPreferenceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Country selectedCountry) setCountryPreference,
    required TResult Function() fetchedCountryPreference,
  }) {
    return fetchedCountryPreference();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Country selectedCountry)? setCountryPreference,
    TResult? Function()? fetchedCountryPreference,
  }) {
    return fetchedCountryPreference?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Country selectedCountry)? setCountryPreference,
    TResult Function()? fetchedCountryPreference,
    required TResult orElse(),
  }) {
    if (fetchedCountryPreference != null) {
      return fetchedCountryPreference();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetCountryPreference value) setCountryPreference,
    required TResult Function(FetchedCountryPreference value)
        fetchedCountryPreference,
  }) {
    return fetchedCountryPreference(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetCountryPreference value)? setCountryPreference,
    TResult? Function(FetchedCountryPreference value)? fetchedCountryPreference,
  }) {
    return fetchedCountryPreference?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetCountryPreference value)? setCountryPreference,
    TResult Function(FetchedCountryPreference value)? fetchedCountryPreference,
    required TResult orElse(),
  }) {
    if (fetchedCountryPreference != null) {
      return fetchedCountryPreference(this);
    }
    return orElse();
  }
}

abstract class FetchedCountryPreference implements CountryEvent {
  const factory FetchedCountryPreference() = _$FetchedCountryPreferenceImpl;
}

/// @nodoc
mixin _$CountryState {
  Country? get country => throw _privateConstructorUsedError;

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryStateCopyWith<CountryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res, CountryState>;
  @useResult
  $Res call({Country? country});
}

/// @nodoc
class _$CountryStateCopyWithImpl<$Res, $Val extends CountryState>
    implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryStateImplCopyWith<$Res>
    implements $CountryStateCopyWith<$Res> {
  factory _$$CountryStateImplCopyWith(
          _$CountryStateImpl value, $Res Function(_$CountryStateImpl) then) =
      __$$CountryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Country? country});
}

/// @nodoc
class __$$CountryStateImplCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$CountryStateImpl>
    implements _$$CountryStateImplCopyWith<$Res> {
  __$$CountryStateImplCopyWithImpl(
      _$CountryStateImpl _value, $Res Function(_$CountryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_$CountryStateImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
    ));
  }
}

/// @nodoc

class _$CountryStateImpl implements _CountryState {
  const _$CountryStateImpl({this.country = null});

  @override
  @JsonKey()
  final Country? country;

  @override
  String toString() {
    return 'CountryState(country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryStateImpl &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryStateImplCopyWith<_$CountryStateImpl> get copyWith =>
      __$$CountryStateImplCopyWithImpl<_$CountryStateImpl>(this, _$identity);
}

abstract class _CountryState implements CountryState {
  const factory _CountryState({final Country? country}) = _$CountryStateImpl;

  @override
  Country? get country;

  /// Create a copy of CountryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryStateImplCopyWith<_$CountryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
