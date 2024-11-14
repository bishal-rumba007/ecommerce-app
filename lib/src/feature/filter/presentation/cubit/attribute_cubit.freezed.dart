// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttributeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Attribute selectedAttribute) attributeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Attribute selectedAttribute)? attributeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Attribute selectedAttribute)? attributeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AttributeSelected value) attributeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AttributeSelected value)? attributeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AttributeSelected value)? attributeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeStateCopyWith<$Res> {
  factory $AttributeStateCopyWith(
          AttributeState value, $Res Function(AttributeState) then) =
      _$AttributeStateCopyWithImpl<$Res, AttributeState>;
}

/// @nodoc
class _$AttributeStateCopyWithImpl<$Res, $Val extends AttributeState>
    implements $AttributeStateCopyWith<$Res> {
  _$AttributeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeState
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
    extends _$AttributeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttributeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AttributeState.initial()';
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
    required TResult Function(Attribute selectedAttribute) attributeSelected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Attribute selectedAttribute)? attributeSelected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Attribute selectedAttribute)? attributeSelected,
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
    required TResult Function(_AttributeSelected value) attributeSelected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AttributeSelected value)? attributeSelected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AttributeSelected value)? attributeSelected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AttributeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AttributeSelectedImplCopyWith<$Res> {
  factory _$$AttributeSelectedImplCopyWith(_$AttributeSelectedImpl value,
          $Res Function(_$AttributeSelectedImpl) then) =
      __$$AttributeSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Attribute selectedAttribute});
}

/// @nodoc
class __$$AttributeSelectedImplCopyWithImpl<$Res>
    extends _$AttributeStateCopyWithImpl<$Res, _$AttributeSelectedImpl>
    implements _$$AttributeSelectedImplCopyWith<$Res> {
  __$$AttributeSelectedImplCopyWithImpl(_$AttributeSelectedImpl _value,
      $Res Function(_$AttributeSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttributeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedAttribute = null,
  }) {
    return _then(_$AttributeSelectedImpl(
      null == selectedAttribute
          ? _value.selectedAttribute
          : selectedAttribute // ignore: cast_nullable_to_non_nullable
              as Attribute,
    ));
  }
}

/// @nodoc

class _$AttributeSelectedImpl implements _AttributeSelected {
  const _$AttributeSelectedImpl(this.selectedAttribute);

  @override
  final Attribute selectedAttribute;

  @override
  String toString() {
    return 'AttributeState.attributeSelected(selectedAttribute: $selectedAttribute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeSelectedImpl &&
            (identical(other.selectedAttribute, selectedAttribute) ||
                other.selectedAttribute == selectedAttribute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedAttribute);

  /// Create a copy of AttributeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeSelectedImplCopyWith<_$AttributeSelectedImpl> get copyWith =>
      __$$AttributeSelectedImplCopyWithImpl<_$AttributeSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Attribute selectedAttribute) attributeSelected,
  }) {
    return attributeSelected(selectedAttribute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Attribute selectedAttribute)? attributeSelected,
  }) {
    return attributeSelected?.call(selectedAttribute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Attribute selectedAttribute)? attributeSelected,
    required TResult orElse(),
  }) {
    if (attributeSelected != null) {
      return attributeSelected(selectedAttribute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AttributeSelected value) attributeSelected,
  }) {
    return attributeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AttributeSelected value)? attributeSelected,
  }) {
    return attributeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AttributeSelected value)? attributeSelected,
    required TResult orElse(),
  }) {
    if (attributeSelected != null) {
      return attributeSelected(this);
    }
    return orElse();
  }
}

abstract class _AttributeSelected implements AttributeState {
  const factory _AttributeSelected(final Attribute selectedAttribute) =
      _$AttributeSelectedImpl;

  Attribute get selectedAttribute;

  /// Create a copy of AttributeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeSelectedImplCopyWith<_$AttributeSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
