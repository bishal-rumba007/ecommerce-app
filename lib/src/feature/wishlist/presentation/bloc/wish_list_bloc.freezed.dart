// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wish_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WishListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddWishListParams params) addedToWishList,
    required TResult Function(String? countryName) fetchedWishList,
    required TResult Function(String wishListId, String wishListItemId)
        deletedWishListItem,
    required TResult Function(String wishListId) clearedWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddWishListParams params)? addedToWishList,
    TResult? Function(String? countryName)? fetchedWishList,
    TResult? Function(String wishListId, String wishListItemId)?
        deletedWishListItem,
    TResult? Function(String wishListId)? clearedWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddWishListParams params)? addedToWishList,
    TResult Function(String? countryName)? fetchedWishList,
    TResult Function(String wishListId, String wishListItemId)?
        deletedWishListItem,
    TResult Function(String wishListId)? clearedWishList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedToWishList value) addedToWishList,
    required TResult Function(_FetchedWishList value) fetchedWishList,
    required TResult Function(_DeletedWishListItem value) deletedWishListItem,
    required TResult Function(_ClearedWishList value) clearedWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddedToWishList value)? addedToWishList,
    TResult? Function(_FetchedWishList value)? fetchedWishList,
    TResult? Function(_DeletedWishListItem value)? deletedWishListItem,
    TResult? Function(_ClearedWishList value)? clearedWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedToWishList value)? addedToWishList,
    TResult Function(_FetchedWishList value)? fetchedWishList,
    TResult Function(_DeletedWishListItem value)? deletedWishListItem,
    TResult Function(_ClearedWishList value)? clearedWishList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListEventCopyWith<$Res> {
  factory $WishListEventCopyWith(
          WishListEvent value, $Res Function(WishListEvent) then) =
      _$WishListEventCopyWithImpl<$Res, WishListEvent>;
}

/// @nodoc
class _$WishListEventCopyWithImpl<$Res, $Val extends WishListEvent>
    implements $WishListEventCopyWith<$Res> {
  _$WishListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddedToWishListImplCopyWith<$Res> {
  factory _$$AddedToWishListImplCopyWith(_$AddedToWishListImpl value,
          $Res Function(_$AddedToWishListImpl) then) =
      __$$AddedToWishListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddWishListParams params});
}

/// @nodoc
class __$$AddedToWishListImplCopyWithImpl<$Res>
    extends _$WishListEventCopyWithImpl<$Res, _$AddedToWishListImpl>
    implements _$$AddedToWishListImplCopyWith<$Res> {
  __$$AddedToWishListImplCopyWithImpl(
      _$AddedToWishListImpl _value, $Res Function(_$AddedToWishListImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$AddedToWishListImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as AddWishListParams,
    ));
  }
}

/// @nodoc

class _$AddedToWishListImpl implements _AddedToWishList {
  const _$AddedToWishListImpl(this.params);

  @override
  final AddWishListParams params;

  @override
  String toString() {
    return 'WishListEvent.addedToWishList(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedToWishListImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of WishListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedToWishListImplCopyWith<_$AddedToWishListImpl> get copyWith =>
      __$$AddedToWishListImplCopyWithImpl<_$AddedToWishListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddWishListParams params) addedToWishList,
    required TResult Function(String? countryName) fetchedWishList,
    required TResult Function(String wishListId, String wishListItemId)
        deletedWishListItem,
    required TResult Function(String wishListId) clearedWishList,
  }) {
    return addedToWishList(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddWishListParams params)? addedToWishList,
    TResult? Function(String? countryName)? fetchedWishList,
    TResult? Function(String wishListId, String wishListItemId)?
        deletedWishListItem,
    TResult? Function(String wishListId)? clearedWishList,
  }) {
    return addedToWishList?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddWishListParams params)? addedToWishList,
    TResult Function(String? countryName)? fetchedWishList,
    TResult Function(String wishListId, String wishListItemId)?
        deletedWishListItem,
    TResult Function(String wishListId)? clearedWishList,
    required TResult orElse(),
  }) {
    if (addedToWishList != null) {
      return addedToWishList(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedToWishList value) addedToWishList,
    required TResult Function(_FetchedWishList value) fetchedWishList,
    required TResult Function(_DeletedWishListItem value) deletedWishListItem,
    required TResult Function(_ClearedWishList value) clearedWishList,
  }) {
    return addedToWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddedToWishList value)? addedToWishList,
    TResult? Function(_FetchedWishList value)? fetchedWishList,
    TResult? Function(_DeletedWishListItem value)? deletedWishListItem,
    TResult? Function(_ClearedWishList value)? clearedWishList,
  }) {
    return addedToWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedToWishList value)? addedToWishList,
    TResult Function(_FetchedWishList value)? fetchedWishList,
    TResult Function(_DeletedWishListItem value)? deletedWishListItem,
    TResult Function(_ClearedWishList value)? clearedWishList,
    required TResult orElse(),
  }) {
    if (addedToWishList != null) {
      return addedToWishList(this);
    }
    return orElse();
  }
}

abstract class _AddedToWishList implements WishListEvent {
  const factory _AddedToWishList(final AddWishListParams params) =
      _$AddedToWishListImpl;

  AddWishListParams get params;

  /// Create a copy of WishListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddedToWishListImplCopyWith<_$AddedToWishListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchedWishListImplCopyWith<$Res> {
  factory _$$FetchedWishListImplCopyWith(_$FetchedWishListImpl value,
          $Res Function(_$FetchedWishListImpl) then) =
      __$$FetchedWishListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? countryName});
}

/// @nodoc
class __$$FetchedWishListImplCopyWithImpl<$Res>
    extends _$WishListEventCopyWithImpl<$Res, _$FetchedWishListImpl>
    implements _$$FetchedWishListImplCopyWith<$Res> {
  __$$FetchedWishListImplCopyWithImpl(
      _$FetchedWishListImpl _value, $Res Function(_$FetchedWishListImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryName = freezed,
  }) {
    return _then(_$FetchedWishListImpl(
      freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchedWishListImpl implements _FetchedWishList {
  const _$FetchedWishListImpl(this.countryName);

  @override
  final String? countryName;

  @override
  String toString() {
    return 'WishListEvent.fetchedWishList(countryName: $countryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedWishListImpl &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryName);

  /// Create a copy of WishListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedWishListImplCopyWith<_$FetchedWishListImpl> get copyWith =>
      __$$FetchedWishListImplCopyWithImpl<_$FetchedWishListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddWishListParams params) addedToWishList,
    required TResult Function(String? countryName) fetchedWishList,
    required TResult Function(String wishListId, String wishListItemId)
        deletedWishListItem,
    required TResult Function(String wishListId) clearedWishList,
  }) {
    return fetchedWishList(countryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddWishListParams params)? addedToWishList,
    TResult? Function(String? countryName)? fetchedWishList,
    TResult? Function(String wishListId, String wishListItemId)?
        deletedWishListItem,
    TResult? Function(String wishListId)? clearedWishList,
  }) {
    return fetchedWishList?.call(countryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddWishListParams params)? addedToWishList,
    TResult Function(String? countryName)? fetchedWishList,
    TResult Function(String wishListId, String wishListItemId)?
        deletedWishListItem,
    TResult Function(String wishListId)? clearedWishList,
    required TResult orElse(),
  }) {
    if (fetchedWishList != null) {
      return fetchedWishList(countryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedToWishList value) addedToWishList,
    required TResult Function(_FetchedWishList value) fetchedWishList,
    required TResult Function(_DeletedWishListItem value) deletedWishListItem,
    required TResult Function(_ClearedWishList value) clearedWishList,
  }) {
    return fetchedWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddedToWishList value)? addedToWishList,
    TResult? Function(_FetchedWishList value)? fetchedWishList,
    TResult? Function(_DeletedWishListItem value)? deletedWishListItem,
    TResult? Function(_ClearedWishList value)? clearedWishList,
  }) {
    return fetchedWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedToWishList value)? addedToWishList,
    TResult Function(_FetchedWishList value)? fetchedWishList,
    TResult Function(_DeletedWishListItem value)? deletedWishListItem,
    TResult Function(_ClearedWishList value)? clearedWishList,
    required TResult orElse(),
  }) {
    if (fetchedWishList != null) {
      return fetchedWishList(this);
    }
    return orElse();
  }
}

abstract class _FetchedWishList implements WishListEvent {
  const factory _FetchedWishList(final String? countryName) =
      _$FetchedWishListImpl;

  String? get countryName;

  /// Create a copy of WishListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedWishListImplCopyWith<_$FetchedWishListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedWishListItemImplCopyWith<$Res> {
  factory _$$DeletedWishListItemImplCopyWith(_$DeletedWishListItemImpl value,
          $Res Function(_$DeletedWishListItemImpl) then) =
      __$$DeletedWishListItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String wishListId, String wishListItemId});
}

/// @nodoc
class __$$DeletedWishListItemImplCopyWithImpl<$Res>
    extends _$WishListEventCopyWithImpl<$Res, _$DeletedWishListItemImpl>
    implements _$$DeletedWishListItemImplCopyWith<$Res> {
  __$$DeletedWishListItemImplCopyWithImpl(_$DeletedWishListItemImpl _value,
      $Res Function(_$DeletedWishListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishListId = null,
    Object? wishListItemId = null,
  }) {
    return _then(_$DeletedWishListItemImpl(
      null == wishListId
          ? _value.wishListId
          : wishListId // ignore: cast_nullable_to_non_nullable
              as String,
      null == wishListItemId
          ? _value.wishListItemId
          : wishListItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletedWishListItemImpl implements _DeletedWishListItem {
  const _$DeletedWishListItemImpl(this.wishListId, this.wishListItemId);

  @override
  final String wishListId;
  @override
  final String wishListItemId;

  @override
  String toString() {
    return 'WishListEvent.deletedWishListItem(wishListId: $wishListId, wishListItemId: $wishListItemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedWishListItemImpl &&
            (identical(other.wishListId, wishListId) ||
                other.wishListId == wishListId) &&
            (identical(other.wishListItemId, wishListItemId) ||
                other.wishListItemId == wishListItemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishListId, wishListItemId);

  /// Create a copy of WishListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedWishListItemImplCopyWith<_$DeletedWishListItemImpl> get copyWith =>
      __$$DeletedWishListItemImplCopyWithImpl<_$DeletedWishListItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddWishListParams params) addedToWishList,
    required TResult Function(String? countryName) fetchedWishList,
    required TResult Function(String wishListId, String wishListItemId)
        deletedWishListItem,
    required TResult Function(String wishListId) clearedWishList,
  }) {
    return deletedWishListItem(wishListId, wishListItemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddWishListParams params)? addedToWishList,
    TResult? Function(String? countryName)? fetchedWishList,
    TResult? Function(String wishListId, String wishListItemId)?
        deletedWishListItem,
    TResult? Function(String wishListId)? clearedWishList,
  }) {
    return deletedWishListItem?.call(wishListId, wishListItemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddWishListParams params)? addedToWishList,
    TResult Function(String? countryName)? fetchedWishList,
    TResult Function(String wishListId, String wishListItemId)?
        deletedWishListItem,
    TResult Function(String wishListId)? clearedWishList,
    required TResult orElse(),
  }) {
    if (deletedWishListItem != null) {
      return deletedWishListItem(wishListId, wishListItemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedToWishList value) addedToWishList,
    required TResult Function(_FetchedWishList value) fetchedWishList,
    required TResult Function(_DeletedWishListItem value) deletedWishListItem,
    required TResult Function(_ClearedWishList value) clearedWishList,
  }) {
    return deletedWishListItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddedToWishList value)? addedToWishList,
    TResult? Function(_FetchedWishList value)? fetchedWishList,
    TResult? Function(_DeletedWishListItem value)? deletedWishListItem,
    TResult? Function(_ClearedWishList value)? clearedWishList,
  }) {
    return deletedWishListItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedToWishList value)? addedToWishList,
    TResult Function(_FetchedWishList value)? fetchedWishList,
    TResult Function(_DeletedWishListItem value)? deletedWishListItem,
    TResult Function(_ClearedWishList value)? clearedWishList,
    required TResult orElse(),
  }) {
    if (deletedWishListItem != null) {
      return deletedWishListItem(this);
    }
    return orElse();
  }
}

abstract class _DeletedWishListItem implements WishListEvent {
  const factory _DeletedWishListItem(
          final String wishListId, final String wishListItemId) =
      _$DeletedWishListItemImpl;

  String get wishListId;
  String get wishListItemId;

  /// Create a copy of WishListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedWishListItemImplCopyWith<_$DeletedWishListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearedWishListImplCopyWith<$Res> {
  factory _$$ClearedWishListImplCopyWith(_$ClearedWishListImpl value,
          $Res Function(_$ClearedWishListImpl) then) =
      __$$ClearedWishListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String wishListId});
}

/// @nodoc
class __$$ClearedWishListImplCopyWithImpl<$Res>
    extends _$WishListEventCopyWithImpl<$Res, _$ClearedWishListImpl>
    implements _$$ClearedWishListImplCopyWith<$Res> {
  __$$ClearedWishListImplCopyWithImpl(
      _$ClearedWishListImpl _value, $Res Function(_$ClearedWishListImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishListId = null,
  }) {
    return _then(_$ClearedWishListImpl(
      null == wishListId
          ? _value.wishListId
          : wishListId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClearedWishListImpl implements _ClearedWishList {
  const _$ClearedWishListImpl(this.wishListId);

  @override
  final String wishListId;

  @override
  String toString() {
    return 'WishListEvent.clearedWishList(wishListId: $wishListId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearedWishListImpl &&
            (identical(other.wishListId, wishListId) ||
                other.wishListId == wishListId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishListId);

  /// Create a copy of WishListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearedWishListImplCopyWith<_$ClearedWishListImpl> get copyWith =>
      __$$ClearedWishListImplCopyWithImpl<_$ClearedWishListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddWishListParams params) addedToWishList,
    required TResult Function(String? countryName) fetchedWishList,
    required TResult Function(String wishListId, String wishListItemId)
        deletedWishListItem,
    required TResult Function(String wishListId) clearedWishList,
  }) {
    return clearedWishList(wishListId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddWishListParams params)? addedToWishList,
    TResult? Function(String? countryName)? fetchedWishList,
    TResult? Function(String wishListId, String wishListItemId)?
        deletedWishListItem,
    TResult? Function(String wishListId)? clearedWishList,
  }) {
    return clearedWishList?.call(wishListId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddWishListParams params)? addedToWishList,
    TResult Function(String? countryName)? fetchedWishList,
    TResult Function(String wishListId, String wishListItemId)?
        deletedWishListItem,
    TResult Function(String wishListId)? clearedWishList,
    required TResult orElse(),
  }) {
    if (clearedWishList != null) {
      return clearedWishList(wishListId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedToWishList value) addedToWishList,
    required TResult Function(_FetchedWishList value) fetchedWishList,
    required TResult Function(_DeletedWishListItem value) deletedWishListItem,
    required TResult Function(_ClearedWishList value) clearedWishList,
  }) {
    return clearedWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddedToWishList value)? addedToWishList,
    TResult? Function(_FetchedWishList value)? fetchedWishList,
    TResult? Function(_DeletedWishListItem value)? deletedWishListItem,
    TResult? Function(_ClearedWishList value)? clearedWishList,
  }) {
    return clearedWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedToWishList value)? addedToWishList,
    TResult Function(_FetchedWishList value)? fetchedWishList,
    TResult Function(_DeletedWishListItem value)? deletedWishListItem,
    TResult Function(_ClearedWishList value)? clearedWishList,
    required TResult orElse(),
  }) {
    if (clearedWishList != null) {
      return clearedWishList(this);
    }
    return orElse();
  }
}

abstract class _ClearedWishList implements WishListEvent {
  const factory _ClearedWishList(final String wishListId) =
      _$ClearedWishListImpl;

  String get wishListId;

  /// Create a copy of WishListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClearedWishListImplCopyWith<_$ClearedWishListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WishList? wishList) loaded,
    required TResult Function(AppException appException) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WishList? wishList)? loaded,
    TResult? Function(AppException appException)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WishList? wishList)? loaded,
    TResult Function(AppException appException)? error,
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
abstract class $WishListStateCopyWith<$Res> {
  factory $WishListStateCopyWith(
          WishListState value, $Res Function(WishListState) then) =
      _$WishListStateCopyWithImpl<$Res, WishListState>;
}

/// @nodoc
class _$WishListStateCopyWithImpl<$Res, $Val extends WishListState>
    implements $WishListStateCopyWith<$Res> {
  _$WishListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishListState
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
    extends _$WishListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WishListState.initial()';
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
    required TResult Function(WishList? wishList) loaded,
    required TResult Function(AppException appException) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WishList? wishList)? loaded,
    TResult? Function(AppException appException)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WishList? wishList)? loaded,
    TResult Function(AppException appException)? error,
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

abstract class _Initial implements WishListState {
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
    extends _$WishListStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'WishListState.loading()';
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
    required TResult Function(WishList? wishList) loaded,
    required TResult Function(AppException appException) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WishList? wishList)? loaded,
    TResult? Function(AppException appException)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WishList? wishList)? loaded,
    TResult Function(AppException appException)? error,
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

abstract class _Loading implements WishListState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WishList? wishList});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishList = freezed,
  }) {
    return _then(_$LoadedImpl(
      freezed == wishList
          ? _value.wishList
          : wishList // ignore: cast_nullable_to_non_nullable
              as WishList?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.wishList);

  @override
  final WishList? wishList;

  @override
  String toString() {
    return 'WishListState.loaded(wishList: $wishList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.wishList, wishList) ||
                other.wishList == wishList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishList);

  /// Create a copy of WishListState
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
    required TResult Function(WishList? wishList) loaded,
    required TResult Function(AppException appException) error,
  }) {
    return loaded(wishList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WishList? wishList)? loaded,
    TResult? Function(AppException appException)? error,
  }) {
    return loaded?.call(wishList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WishList? wishList)? loaded,
    TResult Function(AppException appException)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(wishList);
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

abstract class _Loaded implements WishListState {
  const factory _Loaded(final WishList? wishList) = _$LoadedImpl;

  WishList? get wishList;

  /// Create a copy of WishListState
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
  $Res call({AppException appException});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appException = null,
  }) {
    return _then(_$ErrorImpl(
      null == appException
          ? _value.appException
          : appException // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.appException);

  @override
  final AppException appException;

  @override
  String toString() {
    return 'WishListState.error(appException: $appException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.appException, appException) ||
                other.appException == appException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appException);

  /// Create a copy of WishListState
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
    required TResult Function(WishList? wishList) loaded,
    required TResult Function(AppException appException) error,
  }) {
    return error(appException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WishList? wishList)? loaded,
    TResult? Function(AppException appException)? error,
  }) {
    return error?.call(appException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WishList? wishList)? loaded,
    TResult Function(AppException appException)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(appException);
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

abstract class _Error implements WishListState {
  const factory _Error(final AppException appException) = _$ErrorImpl;

  AppException get appException;

  /// Create a copy of WishListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
