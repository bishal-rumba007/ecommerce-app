part of 'attribute_cubit.dart';

@freezed
class AttributeState with _$AttributeState {
  const factory AttributeState.initial() = _Initial;
  const factory AttributeState.attributeSelected(Attribute selectedAttribute) =
      _AttributeSelected;
}
