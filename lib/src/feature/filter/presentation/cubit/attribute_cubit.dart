import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/filter/domain/entities/attribute.dart';

part 'attribute_cubit.freezed.dart';
part 'attribute_state.dart';

class AttributeCubit extends Cubit<AttributeState> {
  AttributeCubit() : super(AttributeState.initial());

  void selectAttribute(Attribute attribute) {
    emit(_AttributeSelected(attribute));
  }
}
