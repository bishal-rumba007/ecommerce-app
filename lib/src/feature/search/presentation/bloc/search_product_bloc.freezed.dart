// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String? selectedCountry)
        searchedProducts,
    required TResult Function(String query, String? selectedCountry)
        loadedMoreProducts,
    required TResult Function() clearedSearch,
    required TResult Function() clearedSearchQueries,
    required TResult Function(String query) deletedSearchQuery,
    required TResult Function() fetchedSearchQueries,
    required TResult Function(String query) savedSearchQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, String? selectedCountry)? searchedProducts,
    TResult? Function(String query, String? selectedCountry)?
        loadedMoreProducts,
    TResult? Function()? clearedSearch,
    TResult? Function()? clearedSearchQueries,
    TResult? Function(String query)? deletedSearchQuery,
    TResult? Function()? fetchedSearchQueries,
    TResult? Function(String query)? savedSearchQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String? selectedCountry)? searchedProducts,
    TResult Function(String query, String? selectedCountry)? loadedMoreProducts,
    TResult Function()? clearedSearch,
    TResult Function()? clearedSearchQueries,
    TResult Function(String query)? deletedSearchQuery,
    TResult Function()? fetchedSearchQueries,
    TResult Function(String query)? savedSearchQuery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchedProducts value) searchedProducts,
    required TResult Function(_LoadedMoreProducts value) loadedMoreProducts,
    required TResult Function(_ClearedSearch value) clearedSearch,
    required TResult Function(_ClearedSearchQueries value) clearedSearchQueries,
    required TResult Function(_DeletedSearchQuery value) deletedSearchQuery,
    required TResult Function(_FetchedSearchQueries value) fetchedSearchQueries,
    required TResult Function(_SavedSearchQuery value) savedSearchQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchedProducts value)? searchedProducts,
    TResult? Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult? Function(_ClearedSearch value)? clearedSearch,
    TResult? Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult? Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult? Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult? Function(_SavedSearchQuery value)? savedSearchQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchedProducts value)? searchedProducts,
    TResult Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult Function(_ClearedSearch value)? clearedSearch,
    TResult Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult Function(_SavedSearchQuery value)? savedSearchQuery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductEventCopyWith<$Res> {
  factory $SearchProductEventCopyWith(
          SearchProductEvent value, $Res Function(SearchProductEvent) then) =
      _$SearchProductEventCopyWithImpl<$Res, SearchProductEvent>;
}

/// @nodoc
class _$SearchProductEventCopyWithImpl<$Res, $Val extends SearchProductEvent>
    implements $SearchProductEventCopyWith<$Res> {
  _$SearchProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchedProductsImplCopyWith<$Res> {
  factory _$$SearchedProductsImplCopyWith(_$SearchedProductsImpl value,
          $Res Function(_$SearchedProductsImpl) then) =
      __$$SearchedProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, String? selectedCountry});
}

/// @nodoc
class __$$SearchedProductsImplCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$SearchedProductsImpl>
    implements _$$SearchedProductsImplCopyWith<$Res> {
  __$$SearchedProductsImplCopyWithImpl(_$SearchedProductsImpl _value,
      $Res Function(_$SearchedProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? selectedCountry = freezed,
  }) {
    return _then(_$SearchedProductsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchedProductsImpl implements _SearchedProducts {
  const _$SearchedProductsImpl(this.query, this.selectedCountry);

  @override
  final String query;
  @override
  final String? selectedCountry;

  @override
  String toString() {
    return 'SearchProductEvent.searchedProducts(query: $query, selectedCountry: $selectedCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedProductsImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, selectedCountry);

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedProductsImplCopyWith<_$SearchedProductsImpl> get copyWith =>
      __$$SearchedProductsImplCopyWithImpl<_$SearchedProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String? selectedCountry)
        searchedProducts,
    required TResult Function(String query, String? selectedCountry)
        loadedMoreProducts,
    required TResult Function() clearedSearch,
    required TResult Function() clearedSearchQueries,
    required TResult Function(String query) deletedSearchQuery,
    required TResult Function() fetchedSearchQueries,
    required TResult Function(String query) savedSearchQuery,
  }) {
    return searchedProducts(query, selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, String? selectedCountry)? searchedProducts,
    TResult? Function(String query, String? selectedCountry)?
        loadedMoreProducts,
    TResult? Function()? clearedSearch,
    TResult? Function()? clearedSearchQueries,
    TResult? Function(String query)? deletedSearchQuery,
    TResult? Function()? fetchedSearchQueries,
    TResult? Function(String query)? savedSearchQuery,
  }) {
    return searchedProducts?.call(query, selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String? selectedCountry)? searchedProducts,
    TResult Function(String query, String? selectedCountry)? loadedMoreProducts,
    TResult Function()? clearedSearch,
    TResult Function()? clearedSearchQueries,
    TResult Function(String query)? deletedSearchQuery,
    TResult Function()? fetchedSearchQueries,
    TResult Function(String query)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (searchedProducts != null) {
      return searchedProducts(query, selectedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchedProducts value) searchedProducts,
    required TResult Function(_LoadedMoreProducts value) loadedMoreProducts,
    required TResult Function(_ClearedSearch value) clearedSearch,
    required TResult Function(_ClearedSearchQueries value) clearedSearchQueries,
    required TResult Function(_DeletedSearchQuery value) deletedSearchQuery,
    required TResult Function(_FetchedSearchQueries value) fetchedSearchQueries,
    required TResult Function(_SavedSearchQuery value) savedSearchQuery,
  }) {
    return searchedProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchedProducts value)? searchedProducts,
    TResult? Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult? Function(_ClearedSearch value)? clearedSearch,
    TResult? Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult? Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult? Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult? Function(_SavedSearchQuery value)? savedSearchQuery,
  }) {
    return searchedProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchedProducts value)? searchedProducts,
    TResult Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult Function(_ClearedSearch value)? clearedSearch,
    TResult Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult Function(_SavedSearchQuery value)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (searchedProducts != null) {
      return searchedProducts(this);
    }
    return orElse();
  }
}

abstract class _SearchedProducts implements SearchProductEvent {
  const factory _SearchedProducts(
          final String query, final String? selectedCountry) =
      _$SearchedProductsImpl;

  String get query;
  String? get selectedCountry;

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchedProductsImplCopyWith<_$SearchedProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedMoreProductsImplCopyWith<$Res> {
  factory _$$LoadedMoreProductsImplCopyWith(_$LoadedMoreProductsImpl value,
          $Res Function(_$LoadedMoreProductsImpl) then) =
      __$$LoadedMoreProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, String? selectedCountry});
}

/// @nodoc
class __$$LoadedMoreProductsImplCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$LoadedMoreProductsImpl>
    implements _$$LoadedMoreProductsImplCopyWith<$Res> {
  __$$LoadedMoreProductsImplCopyWithImpl(_$LoadedMoreProductsImpl _value,
      $Res Function(_$LoadedMoreProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? selectedCountry = freezed,
  }) {
    return _then(_$LoadedMoreProductsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadedMoreProductsImpl implements _LoadedMoreProducts {
  const _$LoadedMoreProductsImpl(this.query, this.selectedCountry);

  @override
  final String query;
  @override
  final String? selectedCountry;

  @override
  String toString() {
    return 'SearchProductEvent.loadedMoreProducts(query: $query, selectedCountry: $selectedCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedMoreProductsImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, selectedCountry);

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedMoreProductsImplCopyWith<_$LoadedMoreProductsImpl> get copyWith =>
      __$$LoadedMoreProductsImplCopyWithImpl<_$LoadedMoreProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String? selectedCountry)
        searchedProducts,
    required TResult Function(String query, String? selectedCountry)
        loadedMoreProducts,
    required TResult Function() clearedSearch,
    required TResult Function() clearedSearchQueries,
    required TResult Function(String query) deletedSearchQuery,
    required TResult Function() fetchedSearchQueries,
    required TResult Function(String query) savedSearchQuery,
  }) {
    return loadedMoreProducts(query, selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, String? selectedCountry)? searchedProducts,
    TResult? Function(String query, String? selectedCountry)?
        loadedMoreProducts,
    TResult? Function()? clearedSearch,
    TResult? Function()? clearedSearchQueries,
    TResult? Function(String query)? deletedSearchQuery,
    TResult? Function()? fetchedSearchQueries,
    TResult? Function(String query)? savedSearchQuery,
  }) {
    return loadedMoreProducts?.call(query, selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String? selectedCountry)? searchedProducts,
    TResult Function(String query, String? selectedCountry)? loadedMoreProducts,
    TResult Function()? clearedSearch,
    TResult Function()? clearedSearchQueries,
    TResult Function(String query)? deletedSearchQuery,
    TResult Function()? fetchedSearchQueries,
    TResult Function(String query)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (loadedMoreProducts != null) {
      return loadedMoreProducts(query, selectedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchedProducts value) searchedProducts,
    required TResult Function(_LoadedMoreProducts value) loadedMoreProducts,
    required TResult Function(_ClearedSearch value) clearedSearch,
    required TResult Function(_ClearedSearchQueries value) clearedSearchQueries,
    required TResult Function(_DeletedSearchQuery value) deletedSearchQuery,
    required TResult Function(_FetchedSearchQueries value) fetchedSearchQueries,
    required TResult Function(_SavedSearchQuery value) savedSearchQuery,
  }) {
    return loadedMoreProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchedProducts value)? searchedProducts,
    TResult? Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult? Function(_ClearedSearch value)? clearedSearch,
    TResult? Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult? Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult? Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult? Function(_SavedSearchQuery value)? savedSearchQuery,
  }) {
    return loadedMoreProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchedProducts value)? searchedProducts,
    TResult Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult Function(_ClearedSearch value)? clearedSearch,
    TResult Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult Function(_SavedSearchQuery value)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (loadedMoreProducts != null) {
      return loadedMoreProducts(this);
    }
    return orElse();
  }
}

abstract class _LoadedMoreProducts implements SearchProductEvent {
  const factory _LoadedMoreProducts(
          final String query, final String? selectedCountry) =
      _$LoadedMoreProductsImpl;

  String get query;
  String? get selectedCountry;

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedMoreProductsImplCopyWith<_$LoadedMoreProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearedSearchImplCopyWith<$Res> {
  factory _$$ClearedSearchImplCopyWith(
          _$ClearedSearchImpl value, $Res Function(_$ClearedSearchImpl) then) =
      __$$ClearedSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearedSearchImplCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$ClearedSearchImpl>
    implements _$$ClearedSearchImplCopyWith<$Res> {
  __$$ClearedSearchImplCopyWithImpl(
      _$ClearedSearchImpl _value, $Res Function(_$ClearedSearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearedSearchImpl implements _ClearedSearch {
  const _$ClearedSearchImpl();

  @override
  String toString() {
    return 'SearchProductEvent.clearedSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearedSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String? selectedCountry)
        searchedProducts,
    required TResult Function(String query, String? selectedCountry)
        loadedMoreProducts,
    required TResult Function() clearedSearch,
    required TResult Function() clearedSearchQueries,
    required TResult Function(String query) deletedSearchQuery,
    required TResult Function() fetchedSearchQueries,
    required TResult Function(String query) savedSearchQuery,
  }) {
    return clearedSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, String? selectedCountry)? searchedProducts,
    TResult? Function(String query, String? selectedCountry)?
        loadedMoreProducts,
    TResult? Function()? clearedSearch,
    TResult? Function()? clearedSearchQueries,
    TResult? Function(String query)? deletedSearchQuery,
    TResult? Function()? fetchedSearchQueries,
    TResult? Function(String query)? savedSearchQuery,
  }) {
    return clearedSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String? selectedCountry)? searchedProducts,
    TResult Function(String query, String? selectedCountry)? loadedMoreProducts,
    TResult Function()? clearedSearch,
    TResult Function()? clearedSearchQueries,
    TResult Function(String query)? deletedSearchQuery,
    TResult Function()? fetchedSearchQueries,
    TResult Function(String query)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (clearedSearch != null) {
      return clearedSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchedProducts value) searchedProducts,
    required TResult Function(_LoadedMoreProducts value) loadedMoreProducts,
    required TResult Function(_ClearedSearch value) clearedSearch,
    required TResult Function(_ClearedSearchQueries value) clearedSearchQueries,
    required TResult Function(_DeletedSearchQuery value) deletedSearchQuery,
    required TResult Function(_FetchedSearchQueries value) fetchedSearchQueries,
    required TResult Function(_SavedSearchQuery value) savedSearchQuery,
  }) {
    return clearedSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchedProducts value)? searchedProducts,
    TResult? Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult? Function(_ClearedSearch value)? clearedSearch,
    TResult? Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult? Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult? Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult? Function(_SavedSearchQuery value)? savedSearchQuery,
  }) {
    return clearedSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchedProducts value)? searchedProducts,
    TResult Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult Function(_ClearedSearch value)? clearedSearch,
    TResult Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult Function(_SavedSearchQuery value)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (clearedSearch != null) {
      return clearedSearch(this);
    }
    return orElse();
  }
}

abstract class _ClearedSearch implements SearchProductEvent {
  const factory _ClearedSearch() = _$ClearedSearchImpl;
}

/// @nodoc
abstract class _$$ClearedSearchQueriesImplCopyWith<$Res> {
  factory _$$ClearedSearchQueriesImplCopyWith(_$ClearedSearchQueriesImpl value,
          $Res Function(_$ClearedSearchQueriesImpl) then) =
      __$$ClearedSearchQueriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearedSearchQueriesImplCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$ClearedSearchQueriesImpl>
    implements _$$ClearedSearchQueriesImplCopyWith<$Res> {
  __$$ClearedSearchQueriesImplCopyWithImpl(_$ClearedSearchQueriesImpl _value,
      $Res Function(_$ClearedSearchQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearedSearchQueriesImpl implements _ClearedSearchQueries {
  const _$ClearedSearchQueriesImpl();

  @override
  String toString() {
    return 'SearchProductEvent.clearedSearchQueries()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearedSearchQueriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String? selectedCountry)
        searchedProducts,
    required TResult Function(String query, String? selectedCountry)
        loadedMoreProducts,
    required TResult Function() clearedSearch,
    required TResult Function() clearedSearchQueries,
    required TResult Function(String query) deletedSearchQuery,
    required TResult Function() fetchedSearchQueries,
    required TResult Function(String query) savedSearchQuery,
  }) {
    return clearedSearchQueries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, String? selectedCountry)? searchedProducts,
    TResult? Function(String query, String? selectedCountry)?
        loadedMoreProducts,
    TResult? Function()? clearedSearch,
    TResult? Function()? clearedSearchQueries,
    TResult? Function(String query)? deletedSearchQuery,
    TResult? Function()? fetchedSearchQueries,
    TResult? Function(String query)? savedSearchQuery,
  }) {
    return clearedSearchQueries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String? selectedCountry)? searchedProducts,
    TResult Function(String query, String? selectedCountry)? loadedMoreProducts,
    TResult Function()? clearedSearch,
    TResult Function()? clearedSearchQueries,
    TResult Function(String query)? deletedSearchQuery,
    TResult Function()? fetchedSearchQueries,
    TResult Function(String query)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (clearedSearchQueries != null) {
      return clearedSearchQueries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchedProducts value) searchedProducts,
    required TResult Function(_LoadedMoreProducts value) loadedMoreProducts,
    required TResult Function(_ClearedSearch value) clearedSearch,
    required TResult Function(_ClearedSearchQueries value) clearedSearchQueries,
    required TResult Function(_DeletedSearchQuery value) deletedSearchQuery,
    required TResult Function(_FetchedSearchQueries value) fetchedSearchQueries,
    required TResult Function(_SavedSearchQuery value) savedSearchQuery,
  }) {
    return clearedSearchQueries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchedProducts value)? searchedProducts,
    TResult? Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult? Function(_ClearedSearch value)? clearedSearch,
    TResult? Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult? Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult? Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult? Function(_SavedSearchQuery value)? savedSearchQuery,
  }) {
    return clearedSearchQueries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchedProducts value)? searchedProducts,
    TResult Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult Function(_ClearedSearch value)? clearedSearch,
    TResult Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult Function(_SavedSearchQuery value)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (clearedSearchQueries != null) {
      return clearedSearchQueries(this);
    }
    return orElse();
  }
}

abstract class _ClearedSearchQueries implements SearchProductEvent {
  const factory _ClearedSearchQueries() = _$ClearedSearchQueriesImpl;
}

/// @nodoc
abstract class _$$DeletedSearchQueryImplCopyWith<$Res> {
  factory _$$DeletedSearchQueryImplCopyWith(_$DeletedSearchQueryImpl value,
          $Res Function(_$DeletedSearchQueryImpl) then) =
      __$$DeletedSearchQueryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$DeletedSearchQueryImplCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$DeletedSearchQueryImpl>
    implements _$$DeletedSearchQueryImplCopyWith<$Res> {
  __$$DeletedSearchQueryImplCopyWithImpl(_$DeletedSearchQueryImpl _value,
      $Res Function(_$DeletedSearchQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$DeletedSearchQueryImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletedSearchQueryImpl implements _DeletedSearchQuery {
  const _$DeletedSearchQueryImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchProductEvent.deletedSearchQuery(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedSearchQueryImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedSearchQueryImplCopyWith<_$DeletedSearchQueryImpl> get copyWith =>
      __$$DeletedSearchQueryImplCopyWithImpl<_$DeletedSearchQueryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String? selectedCountry)
        searchedProducts,
    required TResult Function(String query, String? selectedCountry)
        loadedMoreProducts,
    required TResult Function() clearedSearch,
    required TResult Function() clearedSearchQueries,
    required TResult Function(String query) deletedSearchQuery,
    required TResult Function() fetchedSearchQueries,
    required TResult Function(String query) savedSearchQuery,
  }) {
    return deletedSearchQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, String? selectedCountry)? searchedProducts,
    TResult? Function(String query, String? selectedCountry)?
        loadedMoreProducts,
    TResult? Function()? clearedSearch,
    TResult? Function()? clearedSearchQueries,
    TResult? Function(String query)? deletedSearchQuery,
    TResult? Function()? fetchedSearchQueries,
    TResult? Function(String query)? savedSearchQuery,
  }) {
    return deletedSearchQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String? selectedCountry)? searchedProducts,
    TResult Function(String query, String? selectedCountry)? loadedMoreProducts,
    TResult Function()? clearedSearch,
    TResult Function()? clearedSearchQueries,
    TResult Function(String query)? deletedSearchQuery,
    TResult Function()? fetchedSearchQueries,
    TResult Function(String query)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (deletedSearchQuery != null) {
      return deletedSearchQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchedProducts value) searchedProducts,
    required TResult Function(_LoadedMoreProducts value) loadedMoreProducts,
    required TResult Function(_ClearedSearch value) clearedSearch,
    required TResult Function(_ClearedSearchQueries value) clearedSearchQueries,
    required TResult Function(_DeletedSearchQuery value) deletedSearchQuery,
    required TResult Function(_FetchedSearchQueries value) fetchedSearchQueries,
    required TResult Function(_SavedSearchQuery value) savedSearchQuery,
  }) {
    return deletedSearchQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchedProducts value)? searchedProducts,
    TResult? Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult? Function(_ClearedSearch value)? clearedSearch,
    TResult? Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult? Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult? Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult? Function(_SavedSearchQuery value)? savedSearchQuery,
  }) {
    return deletedSearchQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchedProducts value)? searchedProducts,
    TResult Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult Function(_ClearedSearch value)? clearedSearch,
    TResult Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult Function(_SavedSearchQuery value)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (deletedSearchQuery != null) {
      return deletedSearchQuery(this);
    }
    return orElse();
  }
}

abstract class _DeletedSearchQuery implements SearchProductEvent {
  const factory _DeletedSearchQuery(final String query) =
      _$DeletedSearchQueryImpl;

  String get query;

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedSearchQueryImplCopyWith<_$DeletedSearchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchedSearchQueriesImplCopyWith<$Res> {
  factory _$$FetchedSearchQueriesImplCopyWith(_$FetchedSearchQueriesImpl value,
          $Res Function(_$FetchedSearchQueriesImpl) then) =
      __$$FetchedSearchQueriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchedSearchQueriesImplCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$FetchedSearchQueriesImpl>
    implements _$$FetchedSearchQueriesImplCopyWith<$Res> {
  __$$FetchedSearchQueriesImplCopyWithImpl(_$FetchedSearchQueriesImpl _value,
      $Res Function(_$FetchedSearchQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchedSearchQueriesImpl implements _FetchedSearchQueries {
  const _$FetchedSearchQueriesImpl();

  @override
  String toString() {
    return 'SearchProductEvent.fetchedSearchQueries()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedSearchQueriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String? selectedCountry)
        searchedProducts,
    required TResult Function(String query, String? selectedCountry)
        loadedMoreProducts,
    required TResult Function() clearedSearch,
    required TResult Function() clearedSearchQueries,
    required TResult Function(String query) deletedSearchQuery,
    required TResult Function() fetchedSearchQueries,
    required TResult Function(String query) savedSearchQuery,
  }) {
    return fetchedSearchQueries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, String? selectedCountry)? searchedProducts,
    TResult? Function(String query, String? selectedCountry)?
        loadedMoreProducts,
    TResult? Function()? clearedSearch,
    TResult? Function()? clearedSearchQueries,
    TResult? Function(String query)? deletedSearchQuery,
    TResult? Function()? fetchedSearchQueries,
    TResult? Function(String query)? savedSearchQuery,
  }) {
    return fetchedSearchQueries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String? selectedCountry)? searchedProducts,
    TResult Function(String query, String? selectedCountry)? loadedMoreProducts,
    TResult Function()? clearedSearch,
    TResult Function()? clearedSearchQueries,
    TResult Function(String query)? deletedSearchQuery,
    TResult Function()? fetchedSearchQueries,
    TResult Function(String query)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (fetchedSearchQueries != null) {
      return fetchedSearchQueries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchedProducts value) searchedProducts,
    required TResult Function(_LoadedMoreProducts value) loadedMoreProducts,
    required TResult Function(_ClearedSearch value) clearedSearch,
    required TResult Function(_ClearedSearchQueries value) clearedSearchQueries,
    required TResult Function(_DeletedSearchQuery value) deletedSearchQuery,
    required TResult Function(_FetchedSearchQueries value) fetchedSearchQueries,
    required TResult Function(_SavedSearchQuery value) savedSearchQuery,
  }) {
    return fetchedSearchQueries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchedProducts value)? searchedProducts,
    TResult? Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult? Function(_ClearedSearch value)? clearedSearch,
    TResult? Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult? Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult? Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult? Function(_SavedSearchQuery value)? savedSearchQuery,
  }) {
    return fetchedSearchQueries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchedProducts value)? searchedProducts,
    TResult Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult Function(_ClearedSearch value)? clearedSearch,
    TResult Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult Function(_SavedSearchQuery value)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (fetchedSearchQueries != null) {
      return fetchedSearchQueries(this);
    }
    return orElse();
  }
}

abstract class _FetchedSearchQueries implements SearchProductEvent {
  const factory _FetchedSearchQueries() = _$FetchedSearchQueriesImpl;
}

/// @nodoc
abstract class _$$SavedSearchQueryImplCopyWith<$Res> {
  factory _$$SavedSearchQueryImplCopyWith(_$SavedSearchQueryImpl value,
          $Res Function(_$SavedSearchQueryImpl) then) =
      __$$SavedSearchQueryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SavedSearchQueryImplCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$SavedSearchQueryImpl>
    implements _$$SavedSearchQueryImplCopyWith<$Res> {
  __$$SavedSearchQueryImplCopyWithImpl(_$SavedSearchQueryImpl _value,
      $Res Function(_$SavedSearchQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SavedSearchQueryImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SavedSearchQueryImpl implements _SavedSearchQuery {
  const _$SavedSearchQueryImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchProductEvent.savedSearchQuery(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedSearchQueryImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedSearchQueryImplCopyWith<_$SavedSearchQueryImpl> get copyWith =>
      __$$SavedSearchQueryImplCopyWithImpl<_$SavedSearchQueryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String? selectedCountry)
        searchedProducts,
    required TResult Function(String query, String? selectedCountry)
        loadedMoreProducts,
    required TResult Function() clearedSearch,
    required TResult Function() clearedSearchQueries,
    required TResult Function(String query) deletedSearchQuery,
    required TResult Function() fetchedSearchQueries,
    required TResult Function(String query) savedSearchQuery,
  }) {
    return savedSearchQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, String? selectedCountry)? searchedProducts,
    TResult? Function(String query, String? selectedCountry)?
        loadedMoreProducts,
    TResult? Function()? clearedSearch,
    TResult? Function()? clearedSearchQueries,
    TResult? Function(String query)? deletedSearchQuery,
    TResult? Function()? fetchedSearchQueries,
    TResult? Function(String query)? savedSearchQuery,
  }) {
    return savedSearchQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String? selectedCountry)? searchedProducts,
    TResult Function(String query, String? selectedCountry)? loadedMoreProducts,
    TResult Function()? clearedSearch,
    TResult Function()? clearedSearchQueries,
    TResult Function(String query)? deletedSearchQuery,
    TResult Function()? fetchedSearchQueries,
    TResult Function(String query)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (savedSearchQuery != null) {
      return savedSearchQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchedProducts value) searchedProducts,
    required TResult Function(_LoadedMoreProducts value) loadedMoreProducts,
    required TResult Function(_ClearedSearch value) clearedSearch,
    required TResult Function(_ClearedSearchQueries value) clearedSearchQueries,
    required TResult Function(_DeletedSearchQuery value) deletedSearchQuery,
    required TResult Function(_FetchedSearchQueries value) fetchedSearchQueries,
    required TResult Function(_SavedSearchQuery value) savedSearchQuery,
  }) {
    return savedSearchQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchedProducts value)? searchedProducts,
    TResult? Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult? Function(_ClearedSearch value)? clearedSearch,
    TResult? Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult? Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult? Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult? Function(_SavedSearchQuery value)? savedSearchQuery,
  }) {
    return savedSearchQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchedProducts value)? searchedProducts,
    TResult Function(_LoadedMoreProducts value)? loadedMoreProducts,
    TResult Function(_ClearedSearch value)? clearedSearch,
    TResult Function(_ClearedSearchQueries value)? clearedSearchQueries,
    TResult Function(_DeletedSearchQuery value)? deletedSearchQuery,
    TResult Function(_FetchedSearchQueries value)? fetchedSearchQueries,
    TResult Function(_SavedSearchQuery value)? savedSearchQuery,
    required TResult orElse(),
  }) {
    if (savedSearchQuery != null) {
      return savedSearchQuery(this);
    }
    return orElse();
  }
}

abstract class _SavedSearchQuery implements SearchProductEvent {
  const factory _SavedSearchQuery(final String query) = _$SavedSearchQueryImpl;

  String get query;

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavedSearchQueryImplCopyWith<_$SavedSearchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchProductState {
  SearchProductStatus get status => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of SearchProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchProductStateCopyWith<SearchProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductStateCopyWith<$Res> {
  factory $SearchProductStateCopyWith(
          SearchProductState value, $Res Function(SearchProductState) then) =
      _$SearchProductStateCopyWithImpl<$Res, SearchProductState>;
  @useResult
  $Res call(
      {SearchProductStatus status,
      List<Product> products,
      bool hasReachedMax,
      String? message});
}

/// @nodoc
class _$SearchProductStateCopyWithImpl<$Res, $Val extends SearchProductState>
    implements $SearchProductStateCopyWith<$Res> {
  _$SearchProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchProductState
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
              as SearchProductStatus,
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
abstract class _$$SearchProductStateImplCopyWith<$Res>
    implements $SearchProductStateCopyWith<$Res> {
  factory _$$SearchProductStateImplCopyWith(_$SearchProductStateImpl value,
          $Res Function(_$SearchProductStateImpl) then) =
      __$$SearchProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchProductStatus status,
      List<Product> products,
      bool hasReachedMax,
      String? message});
}

/// @nodoc
class __$$SearchProductStateImplCopyWithImpl<$Res>
    extends _$SearchProductStateCopyWithImpl<$Res, _$SearchProductStateImpl>
    implements _$$SearchProductStateImplCopyWith<$Res> {
  __$$SearchProductStateImplCopyWithImpl(_$SearchProductStateImpl _value,
      $Res Function(_$SearchProductStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? products = null,
    Object? hasReachedMax = null,
    Object? message = freezed,
  }) {
    return _then(_$SearchProductStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchProductStatus,
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

class _$SearchProductStateImpl implements _SearchProductState {
  const _$SearchProductStateImpl(
      {this.status = SearchProductStatus.initial,
      final List<Product> products = const <Product>[],
      this.hasReachedMax = false,
      this.message})
      : _products = products;

  @override
  @JsonKey()
  final SearchProductStatus status;
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
    return 'SearchProductState(status: $status, products: $products, hasReachedMax: $hasReachedMax, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_products), hasReachedMax, message);

  /// Create a copy of SearchProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductStateImplCopyWith<_$SearchProductStateImpl> get copyWith =>
      __$$SearchProductStateImplCopyWithImpl<_$SearchProductStateImpl>(
          this, _$identity);
}

abstract class _SearchProductState implements SearchProductState {
  const factory _SearchProductState(
      {final SearchProductStatus status,
      final List<Product> products,
      final bool hasReachedMax,
      final String? message}) = _$SearchProductStateImpl;

  @override
  SearchProductStatus get status;
  @override
  List<Product> get products;
  @override
  bool get hasReachedMax;
  @override
  String? get message;

  /// Create a copy of SearchProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductStateImplCopyWith<_$SearchProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
