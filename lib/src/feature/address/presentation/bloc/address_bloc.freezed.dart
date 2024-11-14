// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchedAddress,
    required TResult Function(AddDeliveryAddressParams address) addressAdded,
    required TResult Function(DeliveryAddress address) adressUpdated,
    required TResult Function(DeliveryAddress address) addressDeleted,
    required TResult Function(DeliveryAddress address) addressSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchedAddress,
    TResult? Function(AddDeliveryAddressParams address)? addressAdded,
    TResult? Function(DeliveryAddress address)? adressUpdated,
    TResult? Function(DeliveryAddress address)? addressDeleted,
    TResult? Function(DeliveryAddress address)? addressSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchedAddress,
    TResult Function(AddDeliveryAddressParams address)? addressAdded,
    TResult Function(DeliveryAddress address)? adressUpdated,
    TResult Function(DeliveryAddress address)? addressDeleted,
    TResult Function(DeliveryAddress address)? addressSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchedAddress value) fetchedAddress,
    required TResult Function(_AddressAdded value) addressAdded,
    required TResult Function(_AddressUpdated value) adressUpdated,
    required TResult Function(_AddressDeleted value) addressDeleted,
    required TResult Function(_AddressSelected value) addressSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchedAddress value)? fetchedAddress,
    TResult? Function(_AddressAdded value)? addressAdded,
    TResult? Function(_AddressUpdated value)? adressUpdated,
    TResult? Function(_AddressDeleted value)? addressDeleted,
    TResult? Function(_AddressSelected value)? addressSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchedAddress value)? fetchedAddress,
    TResult Function(_AddressAdded value)? addressAdded,
    TResult Function(_AddressUpdated value)? adressUpdated,
    TResult Function(_AddressDeleted value)? addressDeleted,
    TResult Function(_AddressSelected value)? addressSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res, AddressEvent>;
}

/// @nodoc
class _$AddressEventCopyWithImpl<$Res, $Val extends AddressEvent>
    implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchedAddressImplCopyWith<$Res> {
  factory _$$FetchedAddressImplCopyWith(_$FetchedAddressImpl value,
          $Res Function(_$FetchedAddressImpl) then) =
      __$$FetchedAddressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchedAddressImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$FetchedAddressImpl>
    implements _$$FetchedAddressImplCopyWith<$Res> {
  __$$FetchedAddressImplCopyWithImpl(
      _$FetchedAddressImpl _value, $Res Function(_$FetchedAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchedAddressImpl implements _FetchedAddress {
  const _$FetchedAddressImpl();

  @override
  String toString() {
    return 'AddressEvent.fetchedAddress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchedAddressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchedAddress,
    required TResult Function(AddDeliveryAddressParams address) addressAdded,
    required TResult Function(DeliveryAddress address) adressUpdated,
    required TResult Function(DeliveryAddress address) addressDeleted,
    required TResult Function(DeliveryAddress address) addressSelected,
  }) {
    return fetchedAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchedAddress,
    TResult? Function(AddDeliveryAddressParams address)? addressAdded,
    TResult? Function(DeliveryAddress address)? adressUpdated,
    TResult? Function(DeliveryAddress address)? addressDeleted,
    TResult? Function(DeliveryAddress address)? addressSelected,
  }) {
    return fetchedAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchedAddress,
    TResult Function(AddDeliveryAddressParams address)? addressAdded,
    TResult Function(DeliveryAddress address)? adressUpdated,
    TResult Function(DeliveryAddress address)? addressDeleted,
    TResult Function(DeliveryAddress address)? addressSelected,
    required TResult orElse(),
  }) {
    if (fetchedAddress != null) {
      return fetchedAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchedAddress value) fetchedAddress,
    required TResult Function(_AddressAdded value) addressAdded,
    required TResult Function(_AddressUpdated value) adressUpdated,
    required TResult Function(_AddressDeleted value) addressDeleted,
    required TResult Function(_AddressSelected value) addressSelected,
  }) {
    return fetchedAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchedAddress value)? fetchedAddress,
    TResult? Function(_AddressAdded value)? addressAdded,
    TResult? Function(_AddressUpdated value)? adressUpdated,
    TResult? Function(_AddressDeleted value)? addressDeleted,
    TResult? Function(_AddressSelected value)? addressSelected,
  }) {
    return fetchedAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchedAddress value)? fetchedAddress,
    TResult Function(_AddressAdded value)? addressAdded,
    TResult Function(_AddressUpdated value)? adressUpdated,
    TResult Function(_AddressDeleted value)? addressDeleted,
    TResult Function(_AddressSelected value)? addressSelected,
    required TResult orElse(),
  }) {
    if (fetchedAddress != null) {
      return fetchedAddress(this);
    }
    return orElse();
  }
}

abstract class _FetchedAddress implements AddressEvent {
  const factory _FetchedAddress() = _$FetchedAddressImpl;
}

/// @nodoc
abstract class _$$AddressAddedImplCopyWith<$Res> {
  factory _$$AddressAddedImplCopyWith(
          _$AddressAddedImpl value, $Res Function(_$AddressAddedImpl) then) =
      __$$AddressAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddDeliveryAddressParams address});
}

/// @nodoc
class __$$AddressAddedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$AddressAddedImpl>
    implements _$$AddressAddedImplCopyWith<$Res> {
  __$$AddressAddedImplCopyWithImpl(
      _$AddressAddedImpl _value, $Res Function(_$AddressAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$AddressAddedImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddDeliveryAddressParams,
    ));
  }
}

/// @nodoc

class _$AddressAddedImpl implements _AddressAdded {
  const _$AddressAddedImpl(this.address);

  @override
  final AddDeliveryAddressParams address;

  @override
  String toString() {
    return 'AddressEvent.addressAdded(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressAddedImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressAddedImplCopyWith<_$AddressAddedImpl> get copyWith =>
      __$$AddressAddedImplCopyWithImpl<_$AddressAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchedAddress,
    required TResult Function(AddDeliveryAddressParams address) addressAdded,
    required TResult Function(DeliveryAddress address) adressUpdated,
    required TResult Function(DeliveryAddress address) addressDeleted,
    required TResult Function(DeliveryAddress address) addressSelected,
  }) {
    return addressAdded(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchedAddress,
    TResult? Function(AddDeliveryAddressParams address)? addressAdded,
    TResult? Function(DeliveryAddress address)? adressUpdated,
    TResult? Function(DeliveryAddress address)? addressDeleted,
    TResult? Function(DeliveryAddress address)? addressSelected,
  }) {
    return addressAdded?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchedAddress,
    TResult Function(AddDeliveryAddressParams address)? addressAdded,
    TResult Function(DeliveryAddress address)? adressUpdated,
    TResult Function(DeliveryAddress address)? addressDeleted,
    TResult Function(DeliveryAddress address)? addressSelected,
    required TResult orElse(),
  }) {
    if (addressAdded != null) {
      return addressAdded(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchedAddress value) fetchedAddress,
    required TResult Function(_AddressAdded value) addressAdded,
    required TResult Function(_AddressUpdated value) adressUpdated,
    required TResult Function(_AddressDeleted value) addressDeleted,
    required TResult Function(_AddressSelected value) addressSelected,
  }) {
    return addressAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchedAddress value)? fetchedAddress,
    TResult? Function(_AddressAdded value)? addressAdded,
    TResult? Function(_AddressUpdated value)? adressUpdated,
    TResult? Function(_AddressDeleted value)? addressDeleted,
    TResult? Function(_AddressSelected value)? addressSelected,
  }) {
    return addressAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchedAddress value)? fetchedAddress,
    TResult Function(_AddressAdded value)? addressAdded,
    TResult Function(_AddressUpdated value)? adressUpdated,
    TResult Function(_AddressDeleted value)? addressDeleted,
    TResult Function(_AddressSelected value)? addressSelected,
    required TResult orElse(),
  }) {
    if (addressAdded != null) {
      return addressAdded(this);
    }
    return orElse();
  }
}

abstract class _AddressAdded implements AddressEvent {
  const factory _AddressAdded(final AddDeliveryAddressParams address) =
      _$AddressAddedImpl;

  AddDeliveryAddressParams get address;

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressAddedImplCopyWith<_$AddressAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressUpdatedImplCopyWith<$Res> {
  factory _$$AddressUpdatedImplCopyWith(_$AddressUpdatedImpl value,
          $Res Function(_$AddressUpdatedImpl) then) =
      __$$AddressUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeliveryAddress address});
}

/// @nodoc
class __$$AddressUpdatedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$AddressUpdatedImpl>
    implements _$$AddressUpdatedImplCopyWith<$Res> {
  __$$AddressUpdatedImplCopyWithImpl(
      _$AddressUpdatedImpl _value, $Res Function(_$AddressUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$AddressUpdatedImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress,
    ));
  }
}

/// @nodoc

class _$AddressUpdatedImpl implements _AddressUpdated {
  const _$AddressUpdatedImpl(this.address);

  @override
  final DeliveryAddress address;

  @override
  String toString() {
    return 'AddressEvent.adressUpdated(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressUpdatedImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressUpdatedImplCopyWith<_$AddressUpdatedImpl> get copyWith =>
      __$$AddressUpdatedImplCopyWithImpl<_$AddressUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchedAddress,
    required TResult Function(AddDeliveryAddressParams address) addressAdded,
    required TResult Function(DeliveryAddress address) adressUpdated,
    required TResult Function(DeliveryAddress address) addressDeleted,
    required TResult Function(DeliveryAddress address) addressSelected,
  }) {
    return adressUpdated(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchedAddress,
    TResult? Function(AddDeliveryAddressParams address)? addressAdded,
    TResult? Function(DeliveryAddress address)? adressUpdated,
    TResult? Function(DeliveryAddress address)? addressDeleted,
    TResult? Function(DeliveryAddress address)? addressSelected,
  }) {
    return adressUpdated?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchedAddress,
    TResult Function(AddDeliveryAddressParams address)? addressAdded,
    TResult Function(DeliveryAddress address)? adressUpdated,
    TResult Function(DeliveryAddress address)? addressDeleted,
    TResult Function(DeliveryAddress address)? addressSelected,
    required TResult orElse(),
  }) {
    if (adressUpdated != null) {
      return adressUpdated(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchedAddress value) fetchedAddress,
    required TResult Function(_AddressAdded value) addressAdded,
    required TResult Function(_AddressUpdated value) adressUpdated,
    required TResult Function(_AddressDeleted value) addressDeleted,
    required TResult Function(_AddressSelected value) addressSelected,
  }) {
    return adressUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchedAddress value)? fetchedAddress,
    TResult? Function(_AddressAdded value)? addressAdded,
    TResult? Function(_AddressUpdated value)? adressUpdated,
    TResult? Function(_AddressDeleted value)? addressDeleted,
    TResult? Function(_AddressSelected value)? addressSelected,
  }) {
    return adressUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchedAddress value)? fetchedAddress,
    TResult Function(_AddressAdded value)? addressAdded,
    TResult Function(_AddressUpdated value)? adressUpdated,
    TResult Function(_AddressDeleted value)? addressDeleted,
    TResult Function(_AddressSelected value)? addressSelected,
    required TResult orElse(),
  }) {
    if (adressUpdated != null) {
      return adressUpdated(this);
    }
    return orElse();
  }
}

abstract class _AddressUpdated implements AddressEvent {
  const factory _AddressUpdated(final DeliveryAddress address) =
      _$AddressUpdatedImpl;

  DeliveryAddress get address;

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressUpdatedImplCopyWith<_$AddressUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressDeletedImplCopyWith<$Res> {
  factory _$$AddressDeletedImplCopyWith(_$AddressDeletedImpl value,
          $Res Function(_$AddressDeletedImpl) then) =
      __$$AddressDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeliveryAddress address});
}

/// @nodoc
class __$$AddressDeletedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$AddressDeletedImpl>
    implements _$$AddressDeletedImplCopyWith<$Res> {
  __$$AddressDeletedImplCopyWithImpl(
      _$AddressDeletedImpl _value, $Res Function(_$AddressDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$AddressDeletedImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress,
    ));
  }
}

/// @nodoc

class _$AddressDeletedImpl implements _AddressDeleted {
  const _$AddressDeletedImpl(this.address);

  @override
  final DeliveryAddress address;

  @override
  String toString() {
    return 'AddressEvent.addressDeleted(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDeletedImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDeletedImplCopyWith<_$AddressDeletedImpl> get copyWith =>
      __$$AddressDeletedImplCopyWithImpl<_$AddressDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchedAddress,
    required TResult Function(AddDeliveryAddressParams address) addressAdded,
    required TResult Function(DeliveryAddress address) adressUpdated,
    required TResult Function(DeliveryAddress address) addressDeleted,
    required TResult Function(DeliveryAddress address) addressSelected,
  }) {
    return addressDeleted(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchedAddress,
    TResult? Function(AddDeliveryAddressParams address)? addressAdded,
    TResult? Function(DeliveryAddress address)? adressUpdated,
    TResult? Function(DeliveryAddress address)? addressDeleted,
    TResult? Function(DeliveryAddress address)? addressSelected,
  }) {
    return addressDeleted?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchedAddress,
    TResult Function(AddDeliveryAddressParams address)? addressAdded,
    TResult Function(DeliveryAddress address)? adressUpdated,
    TResult Function(DeliveryAddress address)? addressDeleted,
    TResult Function(DeliveryAddress address)? addressSelected,
    required TResult orElse(),
  }) {
    if (addressDeleted != null) {
      return addressDeleted(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchedAddress value) fetchedAddress,
    required TResult Function(_AddressAdded value) addressAdded,
    required TResult Function(_AddressUpdated value) adressUpdated,
    required TResult Function(_AddressDeleted value) addressDeleted,
    required TResult Function(_AddressSelected value) addressSelected,
  }) {
    return addressDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchedAddress value)? fetchedAddress,
    TResult? Function(_AddressAdded value)? addressAdded,
    TResult? Function(_AddressUpdated value)? adressUpdated,
    TResult? Function(_AddressDeleted value)? addressDeleted,
    TResult? Function(_AddressSelected value)? addressSelected,
  }) {
    return addressDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchedAddress value)? fetchedAddress,
    TResult Function(_AddressAdded value)? addressAdded,
    TResult Function(_AddressUpdated value)? adressUpdated,
    TResult Function(_AddressDeleted value)? addressDeleted,
    TResult Function(_AddressSelected value)? addressSelected,
    required TResult orElse(),
  }) {
    if (addressDeleted != null) {
      return addressDeleted(this);
    }
    return orElse();
  }
}

abstract class _AddressDeleted implements AddressEvent {
  const factory _AddressDeleted(final DeliveryAddress address) =
      _$AddressDeletedImpl;

  DeliveryAddress get address;

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressDeletedImplCopyWith<_$AddressDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressSelectedImplCopyWith<$Res> {
  factory _$$AddressSelectedImplCopyWith(_$AddressSelectedImpl value,
          $Res Function(_$AddressSelectedImpl) then) =
      __$$AddressSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeliveryAddress address});
}

/// @nodoc
class __$$AddressSelectedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$AddressSelectedImpl>
    implements _$$AddressSelectedImplCopyWith<$Res> {
  __$$AddressSelectedImplCopyWithImpl(
      _$AddressSelectedImpl _value, $Res Function(_$AddressSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$AddressSelectedImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress,
    ));
  }
}

/// @nodoc

class _$AddressSelectedImpl implements _AddressSelected {
  const _$AddressSelectedImpl(this.address);

  @override
  final DeliveryAddress address;

  @override
  String toString() {
    return 'AddressEvent.addressSelected(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressSelectedImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressSelectedImplCopyWith<_$AddressSelectedImpl> get copyWith =>
      __$$AddressSelectedImplCopyWithImpl<_$AddressSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchedAddress,
    required TResult Function(AddDeliveryAddressParams address) addressAdded,
    required TResult Function(DeliveryAddress address) adressUpdated,
    required TResult Function(DeliveryAddress address) addressDeleted,
    required TResult Function(DeliveryAddress address) addressSelected,
  }) {
    return addressSelected(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchedAddress,
    TResult? Function(AddDeliveryAddressParams address)? addressAdded,
    TResult? Function(DeliveryAddress address)? adressUpdated,
    TResult? Function(DeliveryAddress address)? addressDeleted,
    TResult? Function(DeliveryAddress address)? addressSelected,
  }) {
    return addressSelected?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchedAddress,
    TResult Function(AddDeliveryAddressParams address)? addressAdded,
    TResult Function(DeliveryAddress address)? adressUpdated,
    TResult Function(DeliveryAddress address)? addressDeleted,
    TResult Function(DeliveryAddress address)? addressSelected,
    required TResult orElse(),
  }) {
    if (addressSelected != null) {
      return addressSelected(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchedAddress value) fetchedAddress,
    required TResult Function(_AddressAdded value) addressAdded,
    required TResult Function(_AddressUpdated value) adressUpdated,
    required TResult Function(_AddressDeleted value) addressDeleted,
    required TResult Function(_AddressSelected value) addressSelected,
  }) {
    return addressSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchedAddress value)? fetchedAddress,
    TResult? Function(_AddressAdded value)? addressAdded,
    TResult? Function(_AddressUpdated value)? adressUpdated,
    TResult? Function(_AddressDeleted value)? addressDeleted,
    TResult? Function(_AddressSelected value)? addressSelected,
  }) {
    return addressSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchedAddress value)? fetchedAddress,
    TResult Function(_AddressAdded value)? addressAdded,
    TResult Function(_AddressUpdated value)? adressUpdated,
    TResult Function(_AddressDeleted value)? addressDeleted,
    TResult Function(_AddressSelected value)? addressSelected,
    required TResult orElse(),
  }) {
    if (addressSelected != null) {
      return addressSelected(this);
    }
    return orElse();
  }
}

abstract class _AddressSelected implements AddressEvent {
  const factory _AddressSelected(final DeliveryAddress address) =
      _$AddressSelectedImpl;

  DeliveryAddress get address;

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressSelectedImplCopyWith<_$AddressSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddressState {
  AddressStatus get status => throw _privateConstructorUsedError;
  List<DeliveryAddress> get address => throw _privateConstructorUsedError;
  DeliveryAddress? get selectedAddress => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isDeletion => throw _privateConstructorUsedError;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressStateCopyWith<AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
  @useResult
  $Res call(
      {AddressStatus status,
      List<DeliveryAddress> address,
      DeliveryAddress? selectedAddress,
      String? message,
      bool isDeletion});
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? address = null,
    Object? selectedAddress = freezed,
    Object? message = freezed,
    Object? isDeletion = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddressStatus,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<DeliveryAddress>,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeletion: null == isDeletion
          ? _value.isDeletion
          : isDeletion // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressStateImplCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$AddressStateImplCopyWith(
          _$AddressStateImpl value, $Res Function(_$AddressStateImpl) then) =
      __$$AddressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddressStatus status,
      List<DeliveryAddress> address,
      DeliveryAddress? selectedAddress,
      String? message,
      bool isDeletion});
}

/// @nodoc
class __$$AddressStateImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$AddressStateImpl>
    implements _$$AddressStateImplCopyWith<$Res> {
  __$$AddressStateImplCopyWithImpl(
      _$AddressStateImpl _value, $Res Function(_$AddressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? address = null,
    Object? selectedAddress = freezed,
    Object? message = freezed,
    Object? isDeletion = null,
  }) {
    return _then(_$AddressStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddressStatus,
      address: null == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<DeliveryAddress>,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeletion: null == isDeletion
          ? _value.isDeletion
          : isDeletion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddressStateImpl implements _AddressState {
  const _$AddressStateImpl(
      {this.status = AddressStatus.initial,
      final List<DeliveryAddress> address = const <DeliveryAddress>[],
      this.selectedAddress = null,
      this.message,
      this.isDeletion = false})
      : _address = address;

  @override
  @JsonKey()
  final AddressStatus status;
  final List<DeliveryAddress> _address;
  @override
  @JsonKey()
  List<DeliveryAddress> get address {
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_address);
  }

  @override
  @JsonKey()
  final DeliveryAddress? selectedAddress;
  @override
  final String? message;
  @override
  @JsonKey()
  final bool isDeletion;

  @override
  String toString() {
    return 'AddressState(status: $status, address: $address, selectedAddress: $selectedAddress, message: $message, isDeletion: $isDeletion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isDeletion, isDeletion) ||
                other.isDeletion == isDeletion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_address),
      selectedAddress,
      message,
      isDeletion);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressStateImplCopyWith<_$AddressStateImpl> get copyWith =>
      __$$AddressStateImplCopyWithImpl<_$AddressStateImpl>(this, _$identity);
}

abstract class _AddressState implements AddressState {
  const factory _AddressState(
      {final AddressStatus status,
      final List<DeliveryAddress> address,
      final DeliveryAddress? selectedAddress,
      final String? message,
      final bool isDeletion}) = _$AddressStateImpl;

  @override
  AddressStatus get status;
  @override
  List<DeliveryAddress> get address;
  @override
  DeliveryAddress? get selectedAddress;
  @override
  String? get message;
  @override
  bool get isDeletion;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressStateImplCopyWith<_$AddressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
