// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String countryId, List<CartRequest> cartRequest)
        cartAdded,
    required TResult Function(String cartId, String cartItemId) cartRemoved,
    required TResult Function(String cartId, List<CartRequest> cartRequest)
        cartUpdated,
    required TResult Function(String? countryName) cartFetched,
    required TResult Function(String cartId) cartCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String countryId, List<CartRequest> cartRequest)?
        cartAdded,
    TResult? Function(String cartId, String cartItemId)? cartRemoved,
    TResult? Function(String cartId, List<CartRequest> cartRequest)?
        cartUpdated,
    TResult? Function(String? countryName)? cartFetched,
    TResult? Function(String cartId)? cartCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String countryId, List<CartRequest> cartRequest)?
        cartAdded,
    TResult Function(String cartId, String cartItemId)? cartRemoved,
    TResult Function(String cartId, List<CartRequest> cartRequest)? cartUpdated,
    TResult Function(String? countryName)? cartFetched,
    TResult Function(String cartId)? cartCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartAdded value) cartAdded,
    required TResult Function(_CartRemoved value) cartRemoved,
    required TResult Function(_CartUpdated value) cartUpdated,
    required TResult Function(_CartFetched value) cartFetched,
    required TResult Function(_CartCleared value) cartCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartAdded value)? cartAdded,
    TResult? Function(_CartRemoved value)? cartRemoved,
    TResult? Function(_CartUpdated value)? cartUpdated,
    TResult? Function(_CartFetched value)? cartFetched,
    TResult? Function(_CartCleared value)? cartCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartAdded value)? cartAdded,
    TResult Function(_CartRemoved value)? cartRemoved,
    TResult Function(_CartUpdated value)? cartUpdated,
    TResult Function(_CartFetched value)? cartFetched,
    TResult Function(_CartCleared value)? cartCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CartAddedImplCopyWith<$Res> {
  factory _$$CartAddedImplCopyWith(
          _$CartAddedImpl value, $Res Function(_$CartAddedImpl) then) =
      __$$CartAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String countryId, List<CartRequest> cartRequest});
}

/// @nodoc
class __$$CartAddedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartAddedImpl>
    implements _$$CartAddedImplCopyWith<$Res> {
  __$$CartAddedImplCopyWithImpl(
      _$CartAddedImpl _value, $Res Function(_$CartAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = null,
    Object? cartRequest = null,
  }) {
    return _then(_$CartAddedImpl(
      null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      null == cartRequest
          ? _value._cartRequest
          : cartRequest // ignore: cast_nullable_to_non_nullable
              as List<CartRequest>,
    ));
  }
}

/// @nodoc

class _$CartAddedImpl implements _CartAdded {
  const _$CartAddedImpl(this.countryId, final List<CartRequest> cartRequest)
      : _cartRequest = cartRequest;

  @override
  final String countryId;
  final List<CartRequest> _cartRequest;
  @override
  List<CartRequest> get cartRequest {
    if (_cartRequest is EqualUnmodifiableListView) return _cartRequest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartRequest);
  }

  @override
  String toString() {
    return 'CartEvent.cartAdded(countryId: $countryId, cartRequest: $cartRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartAddedImpl &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            const DeepCollectionEquality()
                .equals(other._cartRequest, _cartRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryId,
      const DeepCollectionEquality().hash(_cartRequest));

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartAddedImplCopyWith<_$CartAddedImpl> get copyWith =>
      __$$CartAddedImplCopyWithImpl<_$CartAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String countryId, List<CartRequest> cartRequest)
        cartAdded,
    required TResult Function(String cartId, String cartItemId) cartRemoved,
    required TResult Function(String cartId, List<CartRequest> cartRequest)
        cartUpdated,
    required TResult Function(String? countryName) cartFetched,
    required TResult Function(String cartId) cartCleared,
  }) {
    return cartAdded(countryId, cartRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String countryId, List<CartRequest> cartRequest)?
        cartAdded,
    TResult? Function(String cartId, String cartItemId)? cartRemoved,
    TResult? Function(String cartId, List<CartRequest> cartRequest)?
        cartUpdated,
    TResult? Function(String? countryName)? cartFetched,
    TResult? Function(String cartId)? cartCleared,
  }) {
    return cartAdded?.call(countryId, cartRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String countryId, List<CartRequest> cartRequest)?
        cartAdded,
    TResult Function(String cartId, String cartItemId)? cartRemoved,
    TResult Function(String cartId, List<CartRequest> cartRequest)? cartUpdated,
    TResult Function(String? countryName)? cartFetched,
    TResult Function(String cartId)? cartCleared,
    required TResult orElse(),
  }) {
    if (cartAdded != null) {
      return cartAdded(countryId, cartRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartAdded value) cartAdded,
    required TResult Function(_CartRemoved value) cartRemoved,
    required TResult Function(_CartUpdated value) cartUpdated,
    required TResult Function(_CartFetched value) cartFetched,
    required TResult Function(_CartCleared value) cartCleared,
  }) {
    return cartAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartAdded value)? cartAdded,
    TResult? Function(_CartRemoved value)? cartRemoved,
    TResult? Function(_CartUpdated value)? cartUpdated,
    TResult? Function(_CartFetched value)? cartFetched,
    TResult? Function(_CartCleared value)? cartCleared,
  }) {
    return cartAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartAdded value)? cartAdded,
    TResult Function(_CartRemoved value)? cartRemoved,
    TResult Function(_CartUpdated value)? cartUpdated,
    TResult Function(_CartFetched value)? cartFetched,
    TResult Function(_CartCleared value)? cartCleared,
    required TResult orElse(),
  }) {
    if (cartAdded != null) {
      return cartAdded(this);
    }
    return orElse();
  }
}

abstract class _CartAdded implements CartEvent {
  const factory _CartAdded(
          final String countryId, final List<CartRequest> cartRequest) =
      _$CartAddedImpl;

  String get countryId;
  List<CartRequest> get cartRequest;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartAddedImplCopyWith<_$CartAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartRemovedImplCopyWith<$Res> {
  factory _$$CartRemovedImplCopyWith(
          _$CartRemovedImpl value, $Res Function(_$CartRemovedImpl) then) =
      __$$CartRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cartId, String cartItemId});
}

/// @nodoc
class __$$CartRemovedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartRemovedImpl>
    implements _$$CartRemovedImplCopyWith<$Res> {
  __$$CartRemovedImplCopyWithImpl(
      _$CartRemovedImpl _value, $Res Function(_$CartRemovedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? cartItemId = null,
  }) {
    return _then(_$CartRemovedImpl(
      null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      null == cartItemId
          ? _value.cartItemId
          : cartItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartRemovedImpl implements _CartRemoved {
  const _$CartRemovedImpl(this.cartId, this.cartItemId);

  @override
  final String cartId;
  @override
  final String cartItemId;

  @override
  String toString() {
    return 'CartEvent.cartRemoved(cartId: $cartId, cartItemId: $cartItemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartRemovedImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.cartItemId, cartItemId) ||
                other.cartItemId == cartItemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartId, cartItemId);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartRemovedImplCopyWith<_$CartRemovedImpl> get copyWith =>
      __$$CartRemovedImplCopyWithImpl<_$CartRemovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String countryId, List<CartRequest> cartRequest)
        cartAdded,
    required TResult Function(String cartId, String cartItemId) cartRemoved,
    required TResult Function(String cartId, List<CartRequest> cartRequest)
        cartUpdated,
    required TResult Function(String? countryName) cartFetched,
    required TResult Function(String cartId) cartCleared,
  }) {
    return cartRemoved(cartId, cartItemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String countryId, List<CartRequest> cartRequest)?
        cartAdded,
    TResult? Function(String cartId, String cartItemId)? cartRemoved,
    TResult? Function(String cartId, List<CartRequest> cartRequest)?
        cartUpdated,
    TResult? Function(String? countryName)? cartFetched,
    TResult? Function(String cartId)? cartCleared,
  }) {
    return cartRemoved?.call(cartId, cartItemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String countryId, List<CartRequest> cartRequest)?
        cartAdded,
    TResult Function(String cartId, String cartItemId)? cartRemoved,
    TResult Function(String cartId, List<CartRequest> cartRequest)? cartUpdated,
    TResult Function(String? countryName)? cartFetched,
    TResult Function(String cartId)? cartCleared,
    required TResult orElse(),
  }) {
    if (cartRemoved != null) {
      return cartRemoved(cartId, cartItemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartAdded value) cartAdded,
    required TResult Function(_CartRemoved value) cartRemoved,
    required TResult Function(_CartUpdated value) cartUpdated,
    required TResult Function(_CartFetched value) cartFetched,
    required TResult Function(_CartCleared value) cartCleared,
  }) {
    return cartRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartAdded value)? cartAdded,
    TResult? Function(_CartRemoved value)? cartRemoved,
    TResult? Function(_CartUpdated value)? cartUpdated,
    TResult? Function(_CartFetched value)? cartFetched,
    TResult? Function(_CartCleared value)? cartCleared,
  }) {
    return cartRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartAdded value)? cartAdded,
    TResult Function(_CartRemoved value)? cartRemoved,
    TResult Function(_CartUpdated value)? cartUpdated,
    TResult Function(_CartFetched value)? cartFetched,
    TResult Function(_CartCleared value)? cartCleared,
    required TResult orElse(),
  }) {
    if (cartRemoved != null) {
      return cartRemoved(this);
    }
    return orElse();
  }
}

abstract class _CartRemoved implements CartEvent {
  const factory _CartRemoved(final String cartId, final String cartItemId) =
      _$CartRemovedImpl;

  String get cartId;
  String get cartItemId;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartRemovedImplCopyWith<_$CartRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartUpdatedImplCopyWith<$Res> {
  factory _$$CartUpdatedImplCopyWith(
          _$CartUpdatedImpl value, $Res Function(_$CartUpdatedImpl) then) =
      __$$CartUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cartId, List<CartRequest> cartRequest});
}

/// @nodoc
class __$$CartUpdatedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartUpdatedImpl>
    implements _$$CartUpdatedImplCopyWith<$Res> {
  __$$CartUpdatedImplCopyWithImpl(
      _$CartUpdatedImpl _value, $Res Function(_$CartUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? cartRequest = null,
  }) {
    return _then(_$CartUpdatedImpl(
      null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      null == cartRequest
          ? _value._cartRequest
          : cartRequest // ignore: cast_nullable_to_non_nullable
              as List<CartRequest>,
    ));
  }
}

/// @nodoc

class _$CartUpdatedImpl implements _CartUpdated {
  const _$CartUpdatedImpl(this.cartId, final List<CartRequest> cartRequest)
      : _cartRequest = cartRequest;

  @override
  final String cartId;
  final List<CartRequest> _cartRequest;
  @override
  List<CartRequest> get cartRequest {
    if (_cartRequest is EqualUnmodifiableListView) return _cartRequest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartRequest);
  }

  @override
  String toString() {
    return 'CartEvent.cartUpdated(cartId: $cartId, cartRequest: $cartRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartUpdatedImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            const DeepCollectionEquality()
                .equals(other._cartRequest, _cartRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cartId, const DeepCollectionEquality().hash(_cartRequest));

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartUpdatedImplCopyWith<_$CartUpdatedImpl> get copyWith =>
      __$$CartUpdatedImplCopyWithImpl<_$CartUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String countryId, List<CartRequest> cartRequest)
        cartAdded,
    required TResult Function(String cartId, String cartItemId) cartRemoved,
    required TResult Function(String cartId, List<CartRequest> cartRequest)
        cartUpdated,
    required TResult Function(String? countryName) cartFetched,
    required TResult Function(String cartId) cartCleared,
  }) {
    return cartUpdated(cartId, cartRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String countryId, List<CartRequest> cartRequest)?
        cartAdded,
    TResult? Function(String cartId, String cartItemId)? cartRemoved,
    TResult? Function(String cartId, List<CartRequest> cartRequest)?
        cartUpdated,
    TResult? Function(String? countryName)? cartFetched,
    TResult? Function(String cartId)? cartCleared,
  }) {
    return cartUpdated?.call(cartId, cartRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String countryId, List<CartRequest> cartRequest)?
        cartAdded,
    TResult Function(String cartId, String cartItemId)? cartRemoved,
    TResult Function(String cartId, List<CartRequest> cartRequest)? cartUpdated,
    TResult Function(String? countryName)? cartFetched,
    TResult Function(String cartId)? cartCleared,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated(cartId, cartRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartAdded value) cartAdded,
    required TResult Function(_CartRemoved value) cartRemoved,
    required TResult Function(_CartUpdated value) cartUpdated,
    required TResult Function(_CartFetched value) cartFetched,
    required TResult Function(_CartCleared value) cartCleared,
  }) {
    return cartUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartAdded value)? cartAdded,
    TResult? Function(_CartRemoved value)? cartRemoved,
    TResult? Function(_CartUpdated value)? cartUpdated,
    TResult? Function(_CartFetched value)? cartFetched,
    TResult? Function(_CartCleared value)? cartCleared,
  }) {
    return cartUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartAdded value)? cartAdded,
    TResult Function(_CartRemoved value)? cartRemoved,
    TResult Function(_CartUpdated value)? cartUpdated,
    TResult Function(_CartFetched value)? cartFetched,
    TResult Function(_CartCleared value)? cartCleared,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated(this);
    }
    return orElse();
  }
}

abstract class _CartUpdated implements CartEvent {
  const factory _CartUpdated(
          final String cartId, final List<CartRequest> cartRequest) =
      _$CartUpdatedImpl;

  String get cartId;
  List<CartRequest> get cartRequest;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartUpdatedImplCopyWith<_$CartUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartFetchedImplCopyWith<$Res> {
  factory _$$CartFetchedImplCopyWith(
          _$CartFetchedImpl value, $Res Function(_$CartFetchedImpl) then) =
      __$$CartFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? countryName});
}

/// @nodoc
class __$$CartFetchedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartFetchedImpl>
    implements _$$CartFetchedImplCopyWith<$Res> {
  __$$CartFetchedImplCopyWithImpl(
      _$CartFetchedImpl _value, $Res Function(_$CartFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryName = freezed,
  }) {
    return _then(_$CartFetchedImpl(
      freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CartFetchedImpl implements _CartFetched {
  const _$CartFetchedImpl(this.countryName);

  @override
  final String? countryName;

  @override
  String toString() {
    return 'CartEvent.cartFetched(countryName: $countryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartFetchedImpl &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryName);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartFetchedImplCopyWith<_$CartFetchedImpl> get copyWith =>
      __$$CartFetchedImplCopyWithImpl<_$CartFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String countryId, List<CartRequest> cartRequest)
        cartAdded,
    required TResult Function(String cartId, String cartItemId) cartRemoved,
    required TResult Function(String cartId, List<CartRequest> cartRequest)
        cartUpdated,
    required TResult Function(String? countryName) cartFetched,
    required TResult Function(String cartId) cartCleared,
  }) {
    return cartFetched(countryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String countryId, List<CartRequest> cartRequest)?
        cartAdded,
    TResult? Function(String cartId, String cartItemId)? cartRemoved,
    TResult? Function(String cartId, List<CartRequest> cartRequest)?
        cartUpdated,
    TResult? Function(String? countryName)? cartFetched,
    TResult? Function(String cartId)? cartCleared,
  }) {
    return cartFetched?.call(countryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String countryId, List<CartRequest> cartRequest)?
        cartAdded,
    TResult Function(String cartId, String cartItemId)? cartRemoved,
    TResult Function(String cartId, List<CartRequest> cartRequest)? cartUpdated,
    TResult Function(String? countryName)? cartFetched,
    TResult Function(String cartId)? cartCleared,
    required TResult orElse(),
  }) {
    if (cartFetched != null) {
      return cartFetched(countryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartAdded value) cartAdded,
    required TResult Function(_CartRemoved value) cartRemoved,
    required TResult Function(_CartUpdated value) cartUpdated,
    required TResult Function(_CartFetched value) cartFetched,
    required TResult Function(_CartCleared value) cartCleared,
  }) {
    return cartFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartAdded value)? cartAdded,
    TResult? Function(_CartRemoved value)? cartRemoved,
    TResult? Function(_CartUpdated value)? cartUpdated,
    TResult? Function(_CartFetched value)? cartFetched,
    TResult? Function(_CartCleared value)? cartCleared,
  }) {
    return cartFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartAdded value)? cartAdded,
    TResult Function(_CartRemoved value)? cartRemoved,
    TResult Function(_CartUpdated value)? cartUpdated,
    TResult Function(_CartFetched value)? cartFetched,
    TResult Function(_CartCleared value)? cartCleared,
    required TResult orElse(),
  }) {
    if (cartFetched != null) {
      return cartFetched(this);
    }
    return orElse();
  }
}

abstract class _CartFetched implements CartEvent {
  const factory _CartFetched(final String? countryName) = _$CartFetchedImpl;

  String? get countryName;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartFetchedImplCopyWith<_$CartFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartClearedImplCopyWith<$Res> {
  factory _$$CartClearedImplCopyWith(
          _$CartClearedImpl value, $Res Function(_$CartClearedImpl) then) =
      __$$CartClearedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cartId});
}

/// @nodoc
class __$$CartClearedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartClearedImpl>
    implements _$$CartClearedImplCopyWith<$Res> {
  __$$CartClearedImplCopyWithImpl(
      _$CartClearedImpl _value, $Res Function(_$CartClearedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
  }) {
    return _then(_$CartClearedImpl(
      null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartClearedImpl implements _CartCleared {
  const _$CartClearedImpl(this.cartId);

  @override
  final String cartId;

  @override
  String toString() {
    return 'CartEvent.cartCleared(cartId: $cartId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartClearedImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartId);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartClearedImplCopyWith<_$CartClearedImpl> get copyWith =>
      __$$CartClearedImplCopyWithImpl<_$CartClearedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String countryId, List<CartRequest> cartRequest)
        cartAdded,
    required TResult Function(String cartId, String cartItemId) cartRemoved,
    required TResult Function(String cartId, List<CartRequest> cartRequest)
        cartUpdated,
    required TResult Function(String? countryName) cartFetched,
    required TResult Function(String cartId) cartCleared,
  }) {
    return cartCleared(cartId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String countryId, List<CartRequest> cartRequest)?
        cartAdded,
    TResult? Function(String cartId, String cartItemId)? cartRemoved,
    TResult? Function(String cartId, List<CartRequest> cartRequest)?
        cartUpdated,
    TResult? Function(String? countryName)? cartFetched,
    TResult? Function(String cartId)? cartCleared,
  }) {
    return cartCleared?.call(cartId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String countryId, List<CartRequest> cartRequest)?
        cartAdded,
    TResult Function(String cartId, String cartItemId)? cartRemoved,
    TResult Function(String cartId, List<CartRequest> cartRequest)? cartUpdated,
    TResult Function(String? countryName)? cartFetched,
    TResult Function(String cartId)? cartCleared,
    required TResult orElse(),
  }) {
    if (cartCleared != null) {
      return cartCleared(cartId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartAdded value) cartAdded,
    required TResult Function(_CartRemoved value) cartRemoved,
    required TResult Function(_CartUpdated value) cartUpdated,
    required TResult Function(_CartFetched value) cartFetched,
    required TResult Function(_CartCleared value) cartCleared,
  }) {
    return cartCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartAdded value)? cartAdded,
    TResult? Function(_CartRemoved value)? cartRemoved,
    TResult? Function(_CartUpdated value)? cartUpdated,
    TResult? Function(_CartFetched value)? cartFetched,
    TResult? Function(_CartCleared value)? cartCleared,
  }) {
    return cartCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartAdded value)? cartAdded,
    TResult Function(_CartRemoved value)? cartRemoved,
    TResult Function(_CartUpdated value)? cartUpdated,
    TResult Function(_CartFetched value)? cartFetched,
    TResult Function(_CartCleared value)? cartCleared,
    required TResult orElse(),
  }) {
    if (cartCleared != null) {
      return cartCleared(this);
    }
    return orElse();
  }
}

abstract class _CartCleared implements CartEvent {
  const factory _CartCleared(final String cartId) = _$CartClearedImpl;

  String get cartId;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartClearedImplCopyWith<_$CartClearedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  CartStatus get status => throw _privateConstructorUsedError;
  Cart? get cart => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  AppException? get appException => throw _privateConstructorUsedError;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {CartStatus status,
      Cart? cart,
      String? message,
      AppException? appException});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cart = freezed,
    Object? message = freezed,
    Object? appException = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      appException: freezed == appException
          ? _value.appException
          : appException // ignore: cast_nullable_to_non_nullable
              as AppException?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CartStatus status,
      Cart? cart,
      String? message,
      AppException? appException});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cart = freezed,
    Object? message = freezed,
    Object? appException = freezed,
  }) {
    return _then(_$CartStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      appException: freezed == appException
          ? _value.appException
          : appException // ignore: cast_nullable_to_non_nullable
              as AppException?,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
      {this.status = CartStatus.initial,
      this.cart = null,
      this.message,
      this.appException});

  @override
  @JsonKey()
  final CartStatus status;
  @override
  @JsonKey()
  final Cart? cart;
  @override
  final String? message;
  @override
  final AppException? appException;

  @override
  String toString() {
    return 'CartState(status: $status, cart: $cart, message: $message, appException: $appException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cart, cart) || other.cart == cart) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.appException, appException) ||
                other.appException == appException));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, cart, message, appException);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {final CartStatus status,
      final Cart? cart,
      final String? message,
      final AppException? appException}) = _$CartStateImpl;

  @override
  CartStatus get status;
  @override
  Cart? get cart;
  @override
  String? get message;
  @override
  AppException? get appException;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
