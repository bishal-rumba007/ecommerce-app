import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/categories/domain/entities/category.dart';

part 'selected_category_cubit.freezed.dart';
part 'selected_category_state.dart';

class SelectedCategoryCubit extends Cubit<SelectedCategoryState> {
  SelectedCategoryCubit() : super(const SelectedCategoryState.initial());

  void selectCategory(Category category) {
    emit(_CategorySelected(category));
  }
}
