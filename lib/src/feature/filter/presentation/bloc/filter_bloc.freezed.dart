// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFilters,
    required TResult Function(
            String filterType, String filterValue, bool isSelected)
        updateSelectedFilters,
    required TResult Function() filterApplied,
    required TResult Function() clearFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFilters,
    TResult? Function(String filterType, String filterValue, bool isSelected)?
        updateSelectedFilters,
    TResult? Function()? filterApplied,
    TResult? Function()? clearFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFilters,
    TResult Function(String filterType, String filterValue, bool isSelected)?
        updateSelectedFilters,
    TResult Function()? filterApplied,
    TResult Function()? clearFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFilters value) loadFilters,
    required TResult Function(UpdateSelectedFilters value)
        updateSelectedFilters,
    required TResult Function(FilterApplied value) filterApplied,
    required TResult Function(ClearFilters value) clearFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFilters value)? loadFilters,
    TResult? Function(UpdateSelectedFilters value)? updateSelectedFilters,
    TResult? Function(FilterApplied value)? filterApplied,
    TResult? Function(ClearFilters value)? clearFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFilters value)? loadFilters,
    TResult Function(UpdateSelectedFilters value)? updateSelectedFilters,
    TResult Function(FilterApplied value)? filterApplied,
    TResult Function(ClearFilters value)? clearFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res, FilterEvent>;
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res, $Val extends FilterEvent>
    implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadFiltersImplCopyWith<$Res> {
  factory _$$LoadFiltersImplCopyWith(
          _$LoadFiltersImpl value, $Res Function(_$LoadFiltersImpl) then) =
      __$$LoadFiltersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFiltersImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$LoadFiltersImpl>
    implements _$$LoadFiltersImplCopyWith<$Res> {
  __$$LoadFiltersImplCopyWithImpl(
      _$LoadFiltersImpl _value, $Res Function(_$LoadFiltersImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadFiltersImpl implements LoadFilters {
  const _$LoadFiltersImpl();

  @override
  String toString() {
    return 'FilterEvent.loadFilters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFiltersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFilters,
    required TResult Function(
            String filterType, String filterValue, bool isSelected)
        updateSelectedFilters,
    required TResult Function() filterApplied,
    required TResult Function() clearFilters,
  }) {
    return loadFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFilters,
    TResult? Function(String filterType, String filterValue, bool isSelected)?
        updateSelectedFilters,
    TResult? Function()? filterApplied,
    TResult? Function()? clearFilters,
  }) {
    return loadFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFilters,
    TResult Function(String filterType, String filterValue, bool isSelected)?
        updateSelectedFilters,
    TResult Function()? filterApplied,
    TResult Function()? clearFilters,
    required TResult orElse(),
  }) {
    if (loadFilters != null) {
      return loadFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFilters value) loadFilters,
    required TResult Function(UpdateSelectedFilters value)
        updateSelectedFilters,
    required TResult Function(FilterApplied value) filterApplied,
    required TResult Function(ClearFilters value) clearFilters,
  }) {
    return loadFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFilters value)? loadFilters,
    TResult? Function(UpdateSelectedFilters value)? updateSelectedFilters,
    TResult? Function(FilterApplied value)? filterApplied,
    TResult? Function(ClearFilters value)? clearFilters,
  }) {
    return loadFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFilters value)? loadFilters,
    TResult Function(UpdateSelectedFilters value)? updateSelectedFilters,
    TResult Function(FilterApplied value)? filterApplied,
    TResult Function(ClearFilters value)? clearFilters,
    required TResult orElse(),
  }) {
    if (loadFilters != null) {
      return loadFilters(this);
    }
    return orElse();
  }
}

abstract class LoadFilters implements FilterEvent {
  const factory LoadFilters() = _$LoadFiltersImpl;
}

/// @nodoc
abstract class _$$UpdateSelectedFiltersImplCopyWith<$Res> {
  factory _$$UpdateSelectedFiltersImplCopyWith(
          _$UpdateSelectedFiltersImpl value,
          $Res Function(_$UpdateSelectedFiltersImpl) then) =
      __$$UpdateSelectedFiltersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filterType, String filterValue, bool isSelected});
}

/// @nodoc
class __$$UpdateSelectedFiltersImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$UpdateSelectedFiltersImpl>
    implements _$$UpdateSelectedFiltersImplCopyWith<$Res> {
  __$$UpdateSelectedFiltersImplCopyWithImpl(_$UpdateSelectedFiltersImpl _value,
      $Res Function(_$UpdateSelectedFiltersImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterType = null,
    Object? filterValue = null,
    Object? isSelected = null,
  }) {
    return _then(_$UpdateSelectedFiltersImpl(
      null == filterType
          ? _value.filterType
          : filterType // ignore: cast_nullable_to_non_nullable
              as String,
      null == filterValue
          ? _value.filterValue
          : filterValue // ignore: cast_nullable_to_non_nullable
              as String,
      null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedFiltersImpl implements UpdateSelectedFilters {
  const _$UpdateSelectedFiltersImpl(
      this.filterType, this.filterValue, this.isSelected);

  @override
  final String filterType;
  @override
  final String filterValue;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'FilterEvent.updateSelectedFilters(filterType: $filterType, filterValue: $filterValue, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedFiltersImpl &&
            (identical(other.filterType, filterType) ||
                other.filterType == filterType) &&
            (identical(other.filterValue, filterValue) ||
                other.filterValue == filterValue) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, filterType, filterValue, isSelected);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedFiltersImplCopyWith<_$UpdateSelectedFiltersImpl>
      get copyWith => __$$UpdateSelectedFiltersImplCopyWithImpl<
          _$UpdateSelectedFiltersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFilters,
    required TResult Function(
            String filterType, String filterValue, bool isSelected)
        updateSelectedFilters,
    required TResult Function() filterApplied,
    required TResult Function() clearFilters,
  }) {
    return updateSelectedFilters(filterType, filterValue, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFilters,
    TResult? Function(String filterType, String filterValue, bool isSelected)?
        updateSelectedFilters,
    TResult? Function()? filterApplied,
    TResult? Function()? clearFilters,
  }) {
    return updateSelectedFilters?.call(filterType, filterValue, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFilters,
    TResult Function(String filterType, String filterValue, bool isSelected)?
        updateSelectedFilters,
    TResult Function()? filterApplied,
    TResult Function()? clearFilters,
    required TResult orElse(),
  }) {
    if (updateSelectedFilters != null) {
      return updateSelectedFilters(filterType, filterValue, isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFilters value) loadFilters,
    required TResult Function(UpdateSelectedFilters value)
        updateSelectedFilters,
    required TResult Function(FilterApplied value) filterApplied,
    required TResult Function(ClearFilters value) clearFilters,
  }) {
    return updateSelectedFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFilters value)? loadFilters,
    TResult? Function(UpdateSelectedFilters value)? updateSelectedFilters,
    TResult? Function(FilterApplied value)? filterApplied,
    TResult? Function(ClearFilters value)? clearFilters,
  }) {
    return updateSelectedFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFilters value)? loadFilters,
    TResult Function(UpdateSelectedFilters value)? updateSelectedFilters,
    TResult Function(FilterApplied value)? filterApplied,
    TResult Function(ClearFilters value)? clearFilters,
    required TResult orElse(),
  }) {
    if (updateSelectedFilters != null) {
      return updateSelectedFilters(this);
    }
    return orElse();
  }
}

abstract class UpdateSelectedFilters implements FilterEvent {
  const factory UpdateSelectedFilters(
      final String filterType,
      final String filterValue,
      final bool isSelected) = _$UpdateSelectedFiltersImpl;

  String get filterType;
  String get filterValue;
  bool get isSelected;

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSelectedFiltersImplCopyWith<_$UpdateSelectedFiltersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterAppliedImplCopyWith<$Res> {
  factory _$$FilterAppliedImplCopyWith(
          _$FilterAppliedImpl value, $Res Function(_$FilterAppliedImpl) then) =
      __$$FilterAppliedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterAppliedImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$FilterAppliedImpl>
    implements _$$FilterAppliedImplCopyWith<$Res> {
  __$$FilterAppliedImplCopyWithImpl(
      _$FilterAppliedImpl _value, $Res Function(_$FilterAppliedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FilterAppliedImpl implements FilterApplied {
  const _$FilterAppliedImpl();

  @override
  String toString() {
    return 'FilterEvent.filterApplied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterAppliedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFilters,
    required TResult Function(
            String filterType, String filterValue, bool isSelected)
        updateSelectedFilters,
    required TResult Function() filterApplied,
    required TResult Function() clearFilters,
  }) {
    return filterApplied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFilters,
    TResult? Function(String filterType, String filterValue, bool isSelected)?
        updateSelectedFilters,
    TResult? Function()? filterApplied,
    TResult? Function()? clearFilters,
  }) {
    return filterApplied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFilters,
    TResult Function(String filterType, String filterValue, bool isSelected)?
        updateSelectedFilters,
    TResult Function()? filterApplied,
    TResult Function()? clearFilters,
    required TResult orElse(),
  }) {
    if (filterApplied != null) {
      return filterApplied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFilters value) loadFilters,
    required TResult Function(UpdateSelectedFilters value)
        updateSelectedFilters,
    required TResult Function(FilterApplied value) filterApplied,
    required TResult Function(ClearFilters value) clearFilters,
  }) {
    return filterApplied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFilters value)? loadFilters,
    TResult? Function(UpdateSelectedFilters value)? updateSelectedFilters,
    TResult? Function(FilterApplied value)? filterApplied,
    TResult? Function(ClearFilters value)? clearFilters,
  }) {
    return filterApplied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFilters value)? loadFilters,
    TResult Function(UpdateSelectedFilters value)? updateSelectedFilters,
    TResult Function(FilterApplied value)? filterApplied,
    TResult Function(ClearFilters value)? clearFilters,
    required TResult orElse(),
  }) {
    if (filterApplied != null) {
      return filterApplied(this);
    }
    return orElse();
  }
}

abstract class FilterApplied implements FilterEvent {
  const factory FilterApplied() = _$FilterAppliedImpl;
}

/// @nodoc
abstract class _$$ClearFiltersImplCopyWith<$Res> {
  factory _$$ClearFiltersImplCopyWith(
          _$ClearFiltersImpl value, $Res Function(_$ClearFiltersImpl) then) =
      __$$ClearFiltersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFiltersImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$ClearFiltersImpl>
    implements _$$ClearFiltersImplCopyWith<$Res> {
  __$$ClearFiltersImplCopyWithImpl(
      _$ClearFiltersImpl _value, $Res Function(_$ClearFiltersImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearFiltersImpl implements ClearFilters {
  const _$ClearFiltersImpl();

  @override
  String toString() {
    return 'FilterEvent.clearFilters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearFiltersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFilters,
    required TResult Function(
            String filterType, String filterValue, bool isSelected)
        updateSelectedFilters,
    required TResult Function() filterApplied,
    required TResult Function() clearFilters,
  }) {
    return clearFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFilters,
    TResult? Function(String filterType, String filterValue, bool isSelected)?
        updateSelectedFilters,
    TResult? Function()? filterApplied,
    TResult? Function()? clearFilters,
  }) {
    return clearFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFilters,
    TResult Function(String filterType, String filterValue, bool isSelected)?
        updateSelectedFilters,
    TResult Function()? filterApplied,
    TResult Function()? clearFilters,
    required TResult orElse(),
  }) {
    if (clearFilters != null) {
      return clearFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFilters value) loadFilters,
    required TResult Function(UpdateSelectedFilters value)
        updateSelectedFilters,
    required TResult Function(FilterApplied value) filterApplied,
    required TResult Function(ClearFilters value) clearFilters,
  }) {
    return clearFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFilters value)? loadFilters,
    TResult? Function(UpdateSelectedFilters value)? updateSelectedFilters,
    TResult? Function(FilterApplied value)? filterApplied,
    TResult? Function(ClearFilters value)? clearFilters,
  }) {
    return clearFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFilters value)? loadFilters,
    TResult Function(UpdateSelectedFilters value)? updateSelectedFilters,
    TResult Function(FilterApplied value)? filterApplied,
    TResult Function(ClearFilters value)? clearFilters,
    required TResult orElse(),
  }) {
    if (clearFilters != null) {
      return clearFilters(this);
    }
    return orElse();
  }
}

abstract class ClearFilters implements FilterEvent {
  const factory ClearFilters() = _$ClearFiltersImpl;
}

/// @nodoc
mixin _$FilterState {
  /// [attributes] holds the list of filter attributes available for filtering.
  List<Attribute> get attributes => throw _privateConstructorUsedError;

  /// [status] represents the current status of the filter operation
  /// (e.g., initial, loading, success, failure).
  FilterStatus get status => throw _privateConstructorUsedError;

  /// [message] contains any error messages related to the filter operation.
  String get message => throw _privateConstructorUsedError;

  /// [selectedFilters] holds the currently selected filter values.
  Map<String, dynamic> get selectedFilters =>
      throw _privateConstructorUsedError;

  /// [isFilterApplied] is used to mark if a filter has been applied.
  /// which is then used to listen to changes in the filter state and call the
  /// appropriate method to fetch the filtered data. in product grid view screen.
  bool get isFilterApplied => throw _privateConstructorUsedError;

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
  @useResult
  $Res call(
      {List<Attribute> attributes,
      FilterStatus status,
      String message,
      Map<String, dynamic> selectedFilters,
      bool isFilterApplied});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? status = null,
    Object? message = null,
    Object? selectedFilters = null,
    Object? isFilterApplied = null,
  }) {
    return _then(_value.copyWith(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<Attribute>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FilterStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      selectedFilters: null == selectedFilters
          ? _value.selectedFilters
          : selectedFilters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isFilterApplied: null == isFilterApplied
          ? _value.isFilterApplied
          : isFilterApplied // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterStateImplCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$FilterStateImplCopyWith(
          _$FilterStateImpl value, $Res Function(_$FilterStateImpl) then) =
      __$$FilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Attribute> attributes,
      FilterStatus status,
      String message,
      Map<String, dynamic> selectedFilters,
      bool isFilterApplied});
}

/// @nodoc
class __$$FilterStateImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$FilterStateImpl>
    implements _$$FilterStateImplCopyWith<$Res> {
  __$$FilterStateImplCopyWithImpl(
      _$FilterStateImpl _value, $Res Function(_$FilterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? status = null,
    Object? message = null,
    Object? selectedFilters = null,
    Object? isFilterApplied = null,
  }) {
    return _then(_$FilterStateImpl(
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<Attribute>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FilterStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      selectedFilters: null == selectedFilters
          ? _value._selectedFilters
          : selectedFilters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isFilterApplied: null == isFilterApplied
          ? _value.isFilterApplied
          : isFilterApplied // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FilterStateImpl implements _FilterState {
  const _$FilterStateImpl(
      {final List<Attribute> attributes = const [],
      this.status = FilterStatus.initial,
      this.message = '',
      final Map<String, dynamic> selectedFilters = const {},
      this.isFilterApplied = false})
      : _attributes = attributes,
        _selectedFilters = selectedFilters;

  /// [attributes] holds the list of filter attributes available for filtering.
  final List<Attribute> _attributes;

  /// [attributes] holds the list of filter attributes available for filtering.
  @override
  @JsonKey()
  List<Attribute> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  /// [status] represents the current status of the filter operation
  /// (e.g., initial, loading, success, failure).
  @override
  @JsonKey()
  final FilterStatus status;

  /// [message] contains any error messages related to the filter operation.
  @override
  @JsonKey()
  final String message;

  /// [selectedFilters] holds the currently selected filter values.
  final Map<String, dynamic> _selectedFilters;

  /// [selectedFilters] holds the currently selected filter values.
  @override
  @JsonKey()
  Map<String, dynamic> get selectedFilters {
    if (_selectedFilters is EqualUnmodifiableMapView) return _selectedFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedFilters);
  }

  /// [isFilterApplied] is used to mark if a filter has been applied.
  /// which is then used to listen to changes in the filter state and call the
  /// appropriate method to fetch the filtered data. in product grid view screen.
  @override
  @JsonKey()
  final bool isFilterApplied;

  @override
  String toString() {
    return 'FilterState(attributes: $attributes, status: $status, message: $message, selectedFilters: $selectedFilters, isFilterApplied: $isFilterApplied)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterStateImpl &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._selectedFilters, _selectedFilters) &&
            (identical(other.isFilterApplied, isFilterApplied) ||
                other.isFilterApplied == isFilterApplied));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_attributes),
      status,
      message,
      const DeepCollectionEquality().hash(_selectedFilters),
      isFilterApplied);

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      __$$FilterStateImplCopyWithImpl<_$FilterStateImpl>(this, _$identity);
}

abstract class _FilterState implements FilterState {
  const factory _FilterState(
      {final List<Attribute> attributes,
      final FilterStatus status,
      final String message,
      final Map<String, dynamic> selectedFilters,
      final bool isFilterApplied}) = _$FilterStateImpl;

  /// [attributes] holds the list of filter attributes available for filtering.
  @override
  List<Attribute> get attributes;

  /// [status] represents the current status of the filter operation
  /// (e.g., initial, loading, success, failure).
  @override
  FilterStatus get status;

  /// [message] contains any error messages related to the filter operation.
  @override
  String get message;

  /// [selectedFilters] holds the currently selected filter values.
  @override
  Map<String, dynamic> get selectedFilters;

  /// [isFilterApplied] is used to mark if a filter has been applied.
  /// which is then used to listen to changes in the filter state and call the
  /// appropriate method to fetch the filtered data. in product grid view screen.
  @override
  bool get isFilterApplied;

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
