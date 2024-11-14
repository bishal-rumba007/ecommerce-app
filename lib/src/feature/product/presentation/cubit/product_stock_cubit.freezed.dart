// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_stock_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductStockState {
  ProductStock? get selectedProductStock => throw _privateConstructorUsedError;

  /// Create a copy of ProductStockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductStockStateCopyWith<ProductStockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStockStateCopyWith<$Res> {
  factory $ProductStockStateCopyWith(
          ProductStockState value, $Res Function(ProductStockState) then) =
      _$ProductStockStateCopyWithImpl<$Res, ProductStockState>;
  @useResult
  $Res call({ProductStock? selectedProductStock});
}

/// @nodoc
class _$ProductStockStateCopyWithImpl<$Res, $Val extends ProductStockState>
    implements $ProductStockStateCopyWith<$Res> {
  _$ProductStockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductStockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedProductStock = freezed,
  }) {
    return _then(_value.copyWith(
      selectedProductStock: freezed == selectedProductStock
          ? _value.selectedProductStock
          : selectedProductStock // ignore: cast_nullable_to_non_nullable
              as ProductStock?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductStockStateImplCopyWith<$Res>
    implements $ProductStockStateCopyWith<$Res> {
  factory _$$ProductStockStateImplCopyWith(_$ProductStockStateImpl value,
          $Res Function(_$ProductStockStateImpl) then) =
      __$$ProductStockStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductStock? selectedProductStock});
}

/// @nodoc
class __$$ProductStockStateImplCopyWithImpl<$Res>
    extends _$ProductStockStateCopyWithImpl<$Res, _$ProductStockStateImpl>
    implements _$$ProductStockStateImplCopyWith<$Res> {
  __$$ProductStockStateImplCopyWithImpl(_$ProductStockStateImpl _value,
      $Res Function(_$ProductStockStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductStockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedProductStock = freezed,
  }) {
    return _then(_$ProductStockStateImpl(
      selectedProductStock: freezed == selectedProductStock
          ? _value.selectedProductStock
          : selectedProductStock // ignore: cast_nullable_to_non_nullable
              as ProductStock?,
    ));
  }
}

/// @nodoc

class _$ProductStockStateImpl implements _ProductStockState {
  const _$ProductStockStateImpl({this.selectedProductStock = null});

  @override
  @JsonKey()
  final ProductStock? selectedProductStock;

  @override
  String toString() {
    return 'ProductStockState(selectedProductStock: $selectedProductStock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStockStateImpl &&
            (identical(other.selectedProductStock, selectedProductStock) ||
                other.selectedProductStock == selectedProductStock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedProductStock);

  /// Create a copy of ProductStockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStockStateImplCopyWith<_$ProductStockStateImpl> get copyWith =>
      __$$ProductStockStateImplCopyWithImpl<_$ProductStockStateImpl>(
          this, _$identity);
}

abstract class _ProductStockState implements ProductStockState {
  const factory _ProductStockState({final ProductStock? selectedProductStock}) =
      _$ProductStockStateImpl;

  @override
  ProductStock? get selectedProductStock;

  /// Create a copy of ProductStockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductStockStateImplCopyWith<_$ProductStockStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
