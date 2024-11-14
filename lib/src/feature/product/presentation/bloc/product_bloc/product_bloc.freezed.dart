// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  String? get selectedCountry => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) fetchedProducts,
    required TResult Function(String slug, String? selectedCountry)
        fetchedCategoryProductList,
    required TResult Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)
        fetchedSubCategoryProductList,
    required TResult Function(String slug, String? selectedCountry)
        refreshedSubCategoryProducts,
    required TResult Function(String slug, String? selectedCountry)
        refreshedCategoryProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? fetchedProducts,
    TResult? Function(String slug, String? selectedCountry)?
        fetchedCategoryProductList,
    TResult? Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)?
        fetchedSubCategoryProductList,
    TResult? Function(String slug, String? selectedCountry)?
        refreshedSubCategoryProducts,
    TResult? Function(String slug, String? selectedCountry)?
        refreshedCategoryProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? fetchedProducts,
    TResult Function(String slug, String? selectedCountry)?
        fetchedCategoryProductList,
    TResult Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)?
        fetchedSubCategoryProductList,
    TResult Function(String slug, String? selectedCountry)?
        refreshedSubCategoryProducts,
    TResult Function(String slug, String? selectedCountry)?
        refreshedCategoryProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchedProducts value) fetchedProducts,
    required TResult Function(_FetchedCategoryProductList value)
        fetchedCategoryProductList,
    required TResult Function(_FetchedSubCategoryProductList value)
        fetchedSubCategoryProductList,
    required TResult Function(_RefreshedSubCategoryProducts value)
        refreshedSubCategoryProducts,
    required TResult Function(_RefreshedCategoryProducts value)
        refreshedCategoryProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchedProducts value)? fetchedProducts,
    TResult? Function(_FetchedCategoryProductList value)?
        fetchedCategoryProductList,
    TResult? Function(_FetchedSubCategoryProductList value)?
        fetchedSubCategoryProductList,
    TResult? Function(_RefreshedSubCategoryProducts value)?
        refreshedSubCategoryProducts,
    TResult? Function(_RefreshedCategoryProducts value)?
        refreshedCategoryProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchedProducts value)? fetchedProducts,
    TResult Function(_FetchedCategoryProductList value)?
        fetchedCategoryProductList,
    TResult Function(_FetchedSubCategoryProductList value)?
        fetchedSubCategoryProductList,
    TResult Function(_RefreshedSubCategoryProducts value)?
        refreshedSubCategoryProducts,
    TResult Function(_RefreshedCategoryProducts value)?
        refreshedCategoryProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductEventCopyWith<ProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
  @useResult
  $Res call({String? selectedCountry});
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEvent
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
abstract class _$$FetchedProductsImplCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$$FetchedProductsImplCopyWith(_$FetchedProductsImpl value,
          $Res Function(_$FetchedProductsImpl) then) =
      __$$FetchedProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? selectedCountry});
}

/// @nodoc
class __$$FetchedProductsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FetchedProductsImpl>
    implements _$$FetchedProductsImplCopyWith<$Res> {
  __$$FetchedProductsImplCopyWithImpl(
      _$FetchedProductsImpl _value, $Res Function(_$FetchedProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCountry = freezed,
  }) {
    return _then(_$FetchedProductsImpl(
      freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchedProductsImpl implements _FetchedProducts {
  const _$FetchedProductsImpl(this.selectedCountry);

  @override
  final String? selectedCountry;

  @override
  String toString() {
    return 'ProductEvent.fetchedProducts(selectedCountry: $selectedCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedProductsImpl &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCountry);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedProductsImplCopyWith<_$FetchedProductsImpl> get copyWith =>
      __$$FetchedProductsImplCopyWithImpl<_$FetchedProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) fetchedProducts,
    required TResult Function(String slug, String? selectedCountry)
        fetchedCategoryProductList,
    required TResult Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)
        fetchedSubCategoryProductList,
    required TResult Function(String slug, String? selectedCountry)
        refreshedSubCategoryProducts,
    required TResult Function(String slug, String? selectedCountry)
        refreshedCategoryProducts,
  }) {
    return fetchedProducts(selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? fetchedProducts,
    TResult? Function(String slug, String? selectedCountry)?
        fetchedCategoryProductList,
    TResult? Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)?
        fetchedSubCategoryProductList,
    TResult? Function(String slug, String? selectedCountry)?
        refreshedSubCategoryProducts,
    TResult? Function(String slug, String? selectedCountry)?
        refreshedCategoryProducts,
  }) {
    return fetchedProducts?.call(selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? fetchedProducts,
    TResult Function(String slug, String? selectedCountry)?
        fetchedCategoryProductList,
    TResult Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)?
        fetchedSubCategoryProductList,
    TResult Function(String slug, String? selectedCountry)?
        refreshedSubCategoryProducts,
    TResult Function(String slug, String? selectedCountry)?
        refreshedCategoryProducts,
    required TResult orElse(),
  }) {
    if (fetchedProducts != null) {
      return fetchedProducts(selectedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchedProducts value) fetchedProducts,
    required TResult Function(_FetchedCategoryProductList value)
        fetchedCategoryProductList,
    required TResult Function(_FetchedSubCategoryProductList value)
        fetchedSubCategoryProductList,
    required TResult Function(_RefreshedSubCategoryProducts value)
        refreshedSubCategoryProducts,
    required TResult Function(_RefreshedCategoryProducts value)
        refreshedCategoryProducts,
  }) {
    return fetchedProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchedProducts value)? fetchedProducts,
    TResult? Function(_FetchedCategoryProductList value)?
        fetchedCategoryProductList,
    TResult? Function(_FetchedSubCategoryProductList value)?
        fetchedSubCategoryProductList,
    TResult? Function(_RefreshedSubCategoryProducts value)?
        refreshedSubCategoryProducts,
    TResult? Function(_RefreshedCategoryProducts value)?
        refreshedCategoryProducts,
  }) {
    return fetchedProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchedProducts value)? fetchedProducts,
    TResult Function(_FetchedCategoryProductList value)?
        fetchedCategoryProductList,
    TResult Function(_FetchedSubCategoryProductList value)?
        fetchedSubCategoryProductList,
    TResult Function(_RefreshedSubCategoryProducts value)?
        refreshedSubCategoryProducts,
    TResult Function(_RefreshedCategoryProducts value)?
        refreshedCategoryProducts,
    required TResult orElse(),
  }) {
    if (fetchedProducts != null) {
      return fetchedProducts(this);
    }
    return orElse();
  }
}

abstract class _FetchedProducts implements ProductEvent {
  const factory _FetchedProducts(final String? selectedCountry) =
      _$FetchedProductsImpl;

  @override
  String? get selectedCountry;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedProductsImplCopyWith<_$FetchedProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchedCategoryProductListImplCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$$FetchedCategoryProductListImplCopyWith(
          _$FetchedCategoryProductListImpl value,
          $Res Function(_$FetchedCategoryProductListImpl) then) =
      __$$FetchedCategoryProductListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String slug, String? selectedCountry});
}

/// @nodoc
class __$$FetchedCategoryProductListImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FetchedCategoryProductListImpl>
    implements _$$FetchedCategoryProductListImplCopyWith<$Res> {
  __$$FetchedCategoryProductListImplCopyWithImpl(
      _$FetchedCategoryProductListImpl _value,
      $Res Function(_$FetchedCategoryProductListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? selectedCountry = freezed,
  }) {
    return _then(_$FetchedCategoryProductListImpl(
      null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchedCategoryProductListImpl implements _FetchedCategoryProductList {
  const _$FetchedCategoryProductListImpl(this.slug, this.selectedCountry);

  @override
  final String slug;
  @override
  final String? selectedCountry;

  @override
  String toString() {
    return 'ProductEvent.fetchedCategoryProductList(slug: $slug, selectedCountry: $selectedCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedCategoryProductListImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slug, selectedCountry);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedCategoryProductListImplCopyWith<_$FetchedCategoryProductListImpl>
      get copyWith => __$$FetchedCategoryProductListImplCopyWithImpl<
          _$FetchedCategoryProductListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) fetchedProducts,
    required TResult Function(String slug, String? selectedCountry)
        fetchedCategoryProductList,
    required TResult Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)
        fetchedSubCategoryProductList,
    required TResult Function(String slug, String? selectedCountry)
        refreshedSubCategoryProducts,
    required TResult Function(String slug, String? selectedCountry)
        refreshedCategoryProducts,
  }) {
    return fetchedCategoryProductList(slug, selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? fetchedProducts,
    TResult? Function(String slug, String? selectedCountry)?
        fetchedCategoryProductList,
    TResult? Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)?
        fetchedSubCategoryProductList,
    TResult? Function(String slug, String? selectedCountry)?
        refreshedSubCategoryProducts,
    TResult? Function(String slug, String? selectedCountry)?
        refreshedCategoryProducts,
  }) {
    return fetchedCategoryProductList?.call(slug, selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? fetchedProducts,
    TResult Function(String slug, String? selectedCountry)?
        fetchedCategoryProductList,
    TResult Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)?
        fetchedSubCategoryProductList,
    TResult Function(String slug, String? selectedCountry)?
        refreshedSubCategoryProducts,
    TResult Function(String slug, String? selectedCountry)?
        refreshedCategoryProducts,
    required TResult orElse(),
  }) {
    if (fetchedCategoryProductList != null) {
      return fetchedCategoryProductList(slug, selectedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchedProducts value) fetchedProducts,
    required TResult Function(_FetchedCategoryProductList value)
        fetchedCategoryProductList,
    required TResult Function(_FetchedSubCategoryProductList value)
        fetchedSubCategoryProductList,
    required TResult Function(_RefreshedSubCategoryProducts value)
        refreshedSubCategoryProducts,
    required TResult Function(_RefreshedCategoryProducts value)
        refreshedCategoryProducts,
  }) {
    return fetchedCategoryProductList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchedProducts value)? fetchedProducts,
    TResult? Function(_FetchedCategoryProductList value)?
        fetchedCategoryProductList,
    TResult? Function(_FetchedSubCategoryProductList value)?
        fetchedSubCategoryProductList,
    TResult? Function(_RefreshedSubCategoryProducts value)?
        refreshedSubCategoryProducts,
    TResult? Function(_RefreshedCategoryProducts value)?
        refreshedCategoryProducts,
  }) {
    return fetchedCategoryProductList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchedProducts value)? fetchedProducts,
    TResult Function(_FetchedCategoryProductList value)?
        fetchedCategoryProductList,
    TResult Function(_FetchedSubCategoryProductList value)?
        fetchedSubCategoryProductList,
    TResult Function(_RefreshedSubCategoryProducts value)?
        refreshedSubCategoryProducts,
    TResult Function(_RefreshedCategoryProducts value)?
        refreshedCategoryProducts,
    required TResult orElse(),
  }) {
    if (fetchedCategoryProductList != null) {
      return fetchedCategoryProductList(this);
    }
    return orElse();
  }
}

abstract class _FetchedCategoryProductList implements ProductEvent {
  const factory _FetchedCategoryProductList(
          final String slug, final String? selectedCountry) =
      _$FetchedCategoryProductListImpl;

  String get slug;
  @override
  String? get selectedCountry;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedCategoryProductListImplCopyWith<_$FetchedCategoryProductListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchedSubCategoryProductListImplCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$$FetchedSubCategoryProductListImplCopyWith(
          _$FetchedSubCategoryProductListImpl value,
          $Res Function(_$FetchedSubCategoryProductListImpl) then) =
      __$$FetchedSubCategoryProductListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String slug, String? selectedCountry, Map<String, dynamic>? filter});
}

/// @nodoc
class __$$FetchedSubCategoryProductListImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res,
        _$FetchedSubCategoryProductListImpl>
    implements _$$FetchedSubCategoryProductListImplCopyWith<$Res> {
  __$$FetchedSubCategoryProductListImplCopyWithImpl(
      _$FetchedSubCategoryProductListImpl _value,
      $Res Function(_$FetchedSubCategoryProductListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? selectedCountry = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$FetchedSubCategoryProductListImpl(
      null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$FetchedSubCategoryProductListImpl
    implements _FetchedSubCategoryProductList {
  const _$FetchedSubCategoryProductListImpl(
      this.slug, this.selectedCountry, final Map<String, dynamic>? filter)
      : _filter = filter;

  @override
  final String slug;
  @override
  final String? selectedCountry;
  final Map<String, dynamic>? _filter;
  @override
  Map<String, dynamic>? get filter {
    final value = _filter;
    if (value == null) return null;
    if (_filter is EqualUnmodifiableMapView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ProductEvent.fetchedSubCategoryProductList(slug: $slug, selectedCountry: $selectedCountry, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedSubCategoryProductListImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry) &&
            const DeepCollectionEquality().equals(other._filter, _filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slug, selectedCountry,
      const DeepCollectionEquality().hash(_filter));

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedSubCategoryProductListImplCopyWith<
          _$FetchedSubCategoryProductListImpl>
      get copyWith => __$$FetchedSubCategoryProductListImplCopyWithImpl<
          _$FetchedSubCategoryProductListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) fetchedProducts,
    required TResult Function(String slug, String? selectedCountry)
        fetchedCategoryProductList,
    required TResult Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)
        fetchedSubCategoryProductList,
    required TResult Function(String slug, String? selectedCountry)
        refreshedSubCategoryProducts,
    required TResult Function(String slug, String? selectedCountry)
        refreshedCategoryProducts,
  }) {
    return fetchedSubCategoryProductList(slug, selectedCountry, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? fetchedProducts,
    TResult? Function(String slug, String? selectedCountry)?
        fetchedCategoryProductList,
    TResult? Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)?
        fetchedSubCategoryProductList,
    TResult? Function(String slug, String? selectedCountry)?
        refreshedSubCategoryProducts,
    TResult? Function(String slug, String? selectedCountry)?
        refreshedCategoryProducts,
  }) {
    return fetchedSubCategoryProductList?.call(slug, selectedCountry, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? fetchedProducts,
    TResult Function(String slug, String? selectedCountry)?
        fetchedCategoryProductList,
    TResult Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)?
        fetchedSubCategoryProductList,
    TResult Function(String slug, String? selectedCountry)?
        refreshedSubCategoryProducts,
    TResult Function(String slug, String? selectedCountry)?
        refreshedCategoryProducts,
    required TResult orElse(),
  }) {
    if (fetchedSubCategoryProductList != null) {
      return fetchedSubCategoryProductList(slug, selectedCountry, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchedProducts value) fetchedProducts,
    required TResult Function(_FetchedCategoryProductList value)
        fetchedCategoryProductList,
    required TResult Function(_FetchedSubCategoryProductList value)
        fetchedSubCategoryProductList,
    required TResult Function(_RefreshedSubCategoryProducts value)
        refreshedSubCategoryProducts,
    required TResult Function(_RefreshedCategoryProducts value)
        refreshedCategoryProducts,
  }) {
    return fetchedSubCategoryProductList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchedProducts value)? fetchedProducts,
    TResult? Function(_FetchedCategoryProductList value)?
        fetchedCategoryProductList,
    TResult? Function(_FetchedSubCategoryProductList value)?
        fetchedSubCategoryProductList,
    TResult? Function(_RefreshedSubCategoryProducts value)?
        refreshedSubCategoryProducts,
    TResult? Function(_RefreshedCategoryProducts value)?
        refreshedCategoryProducts,
  }) {
    return fetchedSubCategoryProductList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchedProducts value)? fetchedProducts,
    TResult Function(_FetchedCategoryProductList value)?
        fetchedCategoryProductList,
    TResult Function(_FetchedSubCategoryProductList value)?
        fetchedSubCategoryProductList,
    TResult Function(_RefreshedSubCategoryProducts value)?
        refreshedSubCategoryProducts,
    TResult Function(_RefreshedCategoryProducts value)?
        refreshedCategoryProducts,
    required TResult orElse(),
  }) {
    if (fetchedSubCategoryProductList != null) {
      return fetchedSubCategoryProductList(this);
    }
    return orElse();
  }
}

abstract class _FetchedSubCategoryProductList implements ProductEvent {
  const factory _FetchedSubCategoryProductList(
      final String slug,
      final String? selectedCountry,
      final Map<String, dynamic>? filter) = _$FetchedSubCategoryProductListImpl;

  String get slug;
  @override
  String? get selectedCountry;
  Map<String, dynamic>? get filter;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedSubCategoryProductListImplCopyWith<
          _$FetchedSubCategoryProductListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshedSubCategoryProductsImplCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$$RefreshedSubCategoryProductsImplCopyWith(
          _$RefreshedSubCategoryProductsImpl value,
          $Res Function(_$RefreshedSubCategoryProductsImpl) then) =
      __$$RefreshedSubCategoryProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String slug, String? selectedCountry});
}

/// @nodoc
class __$$RefreshedSubCategoryProductsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$RefreshedSubCategoryProductsImpl>
    implements _$$RefreshedSubCategoryProductsImplCopyWith<$Res> {
  __$$RefreshedSubCategoryProductsImplCopyWithImpl(
      _$RefreshedSubCategoryProductsImpl _value,
      $Res Function(_$RefreshedSubCategoryProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? selectedCountry = freezed,
  }) {
    return _then(_$RefreshedSubCategoryProductsImpl(
      null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RefreshedSubCategoryProductsImpl
    implements _RefreshedSubCategoryProducts {
  const _$RefreshedSubCategoryProductsImpl(this.slug, this.selectedCountry);

  @override
  final String slug;
  @override
  final String? selectedCountry;

  @override
  String toString() {
    return 'ProductEvent.refreshedSubCategoryProducts(slug: $slug, selectedCountry: $selectedCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshedSubCategoryProductsImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slug, selectedCountry);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshedSubCategoryProductsImplCopyWith<
          _$RefreshedSubCategoryProductsImpl>
      get copyWith => __$$RefreshedSubCategoryProductsImplCopyWithImpl<
          _$RefreshedSubCategoryProductsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) fetchedProducts,
    required TResult Function(String slug, String? selectedCountry)
        fetchedCategoryProductList,
    required TResult Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)
        fetchedSubCategoryProductList,
    required TResult Function(String slug, String? selectedCountry)
        refreshedSubCategoryProducts,
    required TResult Function(String slug, String? selectedCountry)
        refreshedCategoryProducts,
  }) {
    return refreshedSubCategoryProducts(slug, selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? fetchedProducts,
    TResult? Function(String slug, String? selectedCountry)?
        fetchedCategoryProductList,
    TResult? Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)?
        fetchedSubCategoryProductList,
    TResult? Function(String slug, String? selectedCountry)?
        refreshedSubCategoryProducts,
    TResult? Function(String slug, String? selectedCountry)?
        refreshedCategoryProducts,
  }) {
    return refreshedSubCategoryProducts?.call(slug, selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? fetchedProducts,
    TResult Function(String slug, String? selectedCountry)?
        fetchedCategoryProductList,
    TResult Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)?
        fetchedSubCategoryProductList,
    TResult Function(String slug, String? selectedCountry)?
        refreshedSubCategoryProducts,
    TResult Function(String slug, String? selectedCountry)?
        refreshedCategoryProducts,
    required TResult orElse(),
  }) {
    if (refreshedSubCategoryProducts != null) {
      return refreshedSubCategoryProducts(slug, selectedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchedProducts value) fetchedProducts,
    required TResult Function(_FetchedCategoryProductList value)
        fetchedCategoryProductList,
    required TResult Function(_FetchedSubCategoryProductList value)
        fetchedSubCategoryProductList,
    required TResult Function(_RefreshedSubCategoryProducts value)
        refreshedSubCategoryProducts,
    required TResult Function(_RefreshedCategoryProducts value)
        refreshedCategoryProducts,
  }) {
    return refreshedSubCategoryProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchedProducts value)? fetchedProducts,
    TResult? Function(_FetchedCategoryProductList value)?
        fetchedCategoryProductList,
    TResult? Function(_FetchedSubCategoryProductList value)?
        fetchedSubCategoryProductList,
    TResult? Function(_RefreshedSubCategoryProducts value)?
        refreshedSubCategoryProducts,
    TResult? Function(_RefreshedCategoryProducts value)?
        refreshedCategoryProducts,
  }) {
    return refreshedSubCategoryProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchedProducts value)? fetchedProducts,
    TResult Function(_FetchedCategoryProductList value)?
        fetchedCategoryProductList,
    TResult Function(_FetchedSubCategoryProductList value)?
        fetchedSubCategoryProductList,
    TResult Function(_RefreshedSubCategoryProducts value)?
        refreshedSubCategoryProducts,
    TResult Function(_RefreshedCategoryProducts value)?
        refreshedCategoryProducts,
    required TResult orElse(),
  }) {
    if (refreshedSubCategoryProducts != null) {
      return refreshedSubCategoryProducts(this);
    }
    return orElse();
  }
}

abstract class _RefreshedSubCategoryProducts implements ProductEvent {
  const factory _RefreshedSubCategoryProducts(
          final String slug, final String? selectedCountry) =
      _$RefreshedSubCategoryProductsImpl;

  String get slug;
  @override
  String? get selectedCountry;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshedSubCategoryProductsImplCopyWith<
          _$RefreshedSubCategoryProductsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshedCategoryProductsImplCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$$RefreshedCategoryProductsImplCopyWith(
          _$RefreshedCategoryProductsImpl value,
          $Res Function(_$RefreshedCategoryProductsImpl) then) =
      __$$RefreshedCategoryProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String slug, String? selectedCountry});
}

/// @nodoc
class __$$RefreshedCategoryProductsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$RefreshedCategoryProductsImpl>
    implements _$$RefreshedCategoryProductsImplCopyWith<$Res> {
  __$$RefreshedCategoryProductsImplCopyWithImpl(
      _$RefreshedCategoryProductsImpl _value,
      $Res Function(_$RefreshedCategoryProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? selectedCountry = freezed,
  }) {
    return _then(_$RefreshedCategoryProductsImpl(
      null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RefreshedCategoryProductsImpl implements _RefreshedCategoryProducts {
  const _$RefreshedCategoryProductsImpl(this.slug, this.selectedCountry);

  @override
  final String slug;
  @override
  final String? selectedCountry;

  @override
  String toString() {
    return 'ProductEvent.refreshedCategoryProducts(slug: $slug, selectedCountry: $selectedCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshedCategoryProductsImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slug, selectedCountry);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshedCategoryProductsImplCopyWith<_$RefreshedCategoryProductsImpl>
      get copyWith => __$$RefreshedCategoryProductsImplCopyWithImpl<
          _$RefreshedCategoryProductsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) fetchedProducts,
    required TResult Function(String slug, String? selectedCountry)
        fetchedCategoryProductList,
    required TResult Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)
        fetchedSubCategoryProductList,
    required TResult Function(String slug, String? selectedCountry)
        refreshedSubCategoryProducts,
    required TResult Function(String slug, String? selectedCountry)
        refreshedCategoryProducts,
  }) {
    return refreshedCategoryProducts(slug, selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? fetchedProducts,
    TResult? Function(String slug, String? selectedCountry)?
        fetchedCategoryProductList,
    TResult? Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)?
        fetchedSubCategoryProductList,
    TResult? Function(String slug, String? selectedCountry)?
        refreshedSubCategoryProducts,
    TResult? Function(String slug, String? selectedCountry)?
        refreshedCategoryProducts,
  }) {
    return refreshedCategoryProducts?.call(slug, selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? fetchedProducts,
    TResult Function(String slug, String? selectedCountry)?
        fetchedCategoryProductList,
    TResult Function(
            String slug, String? selectedCountry, Map<String, dynamic>? filter)?
        fetchedSubCategoryProductList,
    TResult Function(String slug, String? selectedCountry)?
        refreshedSubCategoryProducts,
    TResult Function(String slug, String? selectedCountry)?
        refreshedCategoryProducts,
    required TResult orElse(),
  }) {
    if (refreshedCategoryProducts != null) {
      return refreshedCategoryProducts(slug, selectedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchedProducts value) fetchedProducts,
    required TResult Function(_FetchedCategoryProductList value)
        fetchedCategoryProductList,
    required TResult Function(_FetchedSubCategoryProductList value)
        fetchedSubCategoryProductList,
    required TResult Function(_RefreshedSubCategoryProducts value)
        refreshedSubCategoryProducts,
    required TResult Function(_RefreshedCategoryProducts value)
        refreshedCategoryProducts,
  }) {
    return refreshedCategoryProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchedProducts value)? fetchedProducts,
    TResult? Function(_FetchedCategoryProductList value)?
        fetchedCategoryProductList,
    TResult? Function(_FetchedSubCategoryProductList value)?
        fetchedSubCategoryProductList,
    TResult? Function(_RefreshedSubCategoryProducts value)?
        refreshedSubCategoryProducts,
    TResult? Function(_RefreshedCategoryProducts value)?
        refreshedCategoryProducts,
  }) {
    return refreshedCategoryProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchedProducts value)? fetchedProducts,
    TResult Function(_FetchedCategoryProductList value)?
        fetchedCategoryProductList,
    TResult Function(_FetchedSubCategoryProductList value)?
        fetchedSubCategoryProductList,
    TResult Function(_RefreshedSubCategoryProducts value)?
        refreshedSubCategoryProducts,
    TResult Function(_RefreshedCategoryProducts value)?
        refreshedCategoryProducts,
    required TResult orElse(),
  }) {
    if (refreshedCategoryProducts != null) {
      return refreshedCategoryProducts(this);
    }
    return orElse();
  }
}

abstract class _RefreshedCategoryProducts implements ProductEvent {
  const factory _RefreshedCategoryProducts(
          final String slug, final String? selectedCountry) =
      _$RefreshedCategoryProductsImpl;

  String get slug;
  @override
  String? get selectedCountry;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshedCategoryProductsImplCopyWith<_$RefreshedCategoryProductsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  ProductStateStatus get status => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {ProductStateStatus status,
      List<Product> products,
      bool hasReachedMax,
      String? message});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? products = null,
    Object? hasReachedMax = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStateStatus,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductStateStatus status,
      List<Product> products,
      bool hasReachedMax,
      String? message});
}

/// @nodoc
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? products = null,
    Object? hasReachedMax = null,
    Object? message = freezed,
  }) {
    return _then(_$ProductStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStateStatus,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductStateImpl implements _ProductState {
  const _$ProductStateImpl(
      {this.status = ProductStateStatus.initial,
      final List<Product> products = const <Product>[],
      this.hasReachedMax = false,
      this.message})
      : _products = products;

  @override
  @JsonKey()
  final ProductStateStatus status;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  final String? message;

  @override
  String toString() {
    return 'ProductState(status: $status, products: $products, hasReachedMax: $hasReachedMax, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_products), hasReachedMax, message);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {final ProductStateStatus status,
      final List<Product> products,
      final bool hasReachedMax,
      final String? message}) = _$ProductStateImpl;

  @override
  ProductStateStatus get status;
  @override
  List<Product> get products;
  @override
  bool get hasReachedMax;
  @override
  String? get message;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
