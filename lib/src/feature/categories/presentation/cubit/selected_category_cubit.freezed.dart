// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectedCategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Category selectedCategory) categorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Category selectedCategory)? categorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Category selectedCategory)? categorySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CategorySelected value) categorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CategorySelected value)? categorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CategorySelected value)? categorySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedCategoryStateCopyWith<$Res> {
  factory $SelectedCategoryStateCopyWith(SelectedCategoryState value,
          $Res Function(SelectedCategoryState) then) =
      _$SelectedCategoryStateCopyWithImpl<$Res, SelectedCategoryState>;
}

/// @nodoc
class _$SelectedCategoryStateCopyWithImpl<$Res,
        $Val extends SelectedCategoryState>
    implements $SelectedCategoryStateCopyWith<$Res> {
  _$SelectedCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedCategoryState
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
    extends _$SelectedCategoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedCategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SelectedCategoryState.initial()';
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
    required TResult Function(Category selectedCategory) categorySelected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Category selectedCategory)? categorySelected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Category selectedCategory)? categorySelected,
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
    required TResult Function(_CategorySelected value) categorySelected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CategorySelected value)? categorySelected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CategorySelected value)? categorySelected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SelectedCategoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CategorySelectedImplCopyWith<$Res> {
  factory _$$CategorySelectedImplCopyWith(_$CategorySelectedImpl value,
          $Res Function(_$CategorySelectedImpl) then) =
      __$$CategorySelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category selectedCategory});
}

/// @nodoc
class __$$CategorySelectedImplCopyWithImpl<$Res>
    extends _$SelectedCategoryStateCopyWithImpl<$Res, _$CategorySelectedImpl>
    implements _$$CategorySelectedImplCopyWith<$Res> {
  __$$CategorySelectedImplCopyWithImpl(_$CategorySelectedImpl _value,
      $Res Function(_$CategorySelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategory = null,
  }) {
    return _then(_$CategorySelectedImpl(
      null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$CategorySelectedImpl implements _CategorySelected {
  const _$CategorySelectedImpl(this.selectedCategory);

  @override
  final Category selectedCategory;

  @override
  String toString() {
    return 'SelectedCategoryState.categorySelected(selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySelectedImpl &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCategory);

  /// Create a copy of SelectedCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith =>
      __$$CategorySelectedImplCopyWithImpl<_$CategorySelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Category selectedCategory) categorySelected,
  }) {
    return categorySelected(selectedCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Category selectedCategory)? categorySelected,
  }) {
    return categorySelected?.call(selectedCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Category selectedCategory)? categorySelected,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(selectedCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CategorySelected value) categorySelected,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CategorySelected value)? categorySelected,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CategorySelected value)? categorySelected,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class _CategorySelected implements SelectedCategoryState {
  const factory _CategorySelected(final Category selectedCategory) =
      _$CategorySelectedImpl;

  Category get selectedCategory;

  /// Create a copy of SelectedCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
